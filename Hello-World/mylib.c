/*-----------------------------------------------------------------------------
 * Implementation of library mylib.h for BarnesHut.c
 *
 * Implementation of a Barnes-Hut Quadtree algorithm
 * 
 * Part of assignment 1 in the course 4EM30:
 *   Scientific Computing for Mechanical Engineering
 *   2017-2018
 *
 * (c) 2018 Joris Remmers TU/e
-----------------------------------------------------------------------------*/


#include <stdlib.h>
#include "mylib.h"

//-----------------------------------------------------------------------------
//
//-----------------------------------------------------------------------------


void readInput
  
  ( char*           name  ,
    BodyList*       blist )
  
{
  FILE         *fp;
  float        x,y,vx,vy,mass,domainSize;
  int          iBod,nBod;
  Vector       pos,velo;

  clearBodyList( blist );
  
  if ( ( fp=fopen(name,"r") ) == NULL) 
  {
    printf("Cannot open file.\n");
  }
  
  fscanf( fp, "%d", &nBod );
  fscanf( fp, "%e", &domainSize );

  blist->domainSize = domainSize;
  
  for ( iBod = 0 ; iBod < nBod ; iBod++ )
  {    
    fscanf(fp,"%e %e %e %e %e",&x,&y,&vx,&vy,&mass);
    
    pos.x  = x;
    pos.y  = y;
    velo.x = vx;
    velo.y = vy;

    addBody( blist , pos , velo , mass );
  }

  fclose( fp );
}


//-----------------------------------------------------------------------------
//
//-----------------------------------------------------------------------------


int addBody

  ( BodyList   *bl  ,
    Vector     pos  ,
    Vector     velo ,
    double     mass )

{
  bl->body[bl->nBod].pos.x  = pos.x;
  bl->body[bl->nBod].pos.y  = pos.y;

  bl->body[bl->nBod].velo.x = velo.x;
  bl->body[bl->nBod].velo.y = velo.y;

  bl->body[bl->nBod].mass   = mass;
  bl->body[bl->nBod].idx    = bl->nBod;

  bl->nBod += 1;

  return bl->nBod-1;
}


//-----------------------------------------------------------------------------
//
//-----------------------------------------------------------------------------


void clearBodyList
  
  ( BodyList   *bl )

{
  bl->nBod = 0;
}


//-----------------------------------------------------------------------------
//
//-----------------------------------------------------------------------------


void printBodies
  
  ( BodyList*       blist )

{
  int iBod;

  for ( iBod = 0 ; iBod < blist->nBod ; iBod++ )
  {
    printf("Body %d; Pos.: %e %e; Vel.: %e %e; Mass: %e\n",iBod,
                                                           blist->body[iBod].pos.x,
                                                           blist->body[iBod].pos.y,
                                                           blist->body[iBod].velo.x,
                                                           blist->body[iBod].velo.y,
                                                           blist->body[iBod].mass );
  }
}


//-----------------------------------------------------------------------------
//
//-----------------------------------------------------------------------------


void resetQuadTree

  ( QuadTree*       quadtree )

{
  quadtree->nNod = 0;
}


//-----------------------------------------------------------------------------
//
//-----------------------------------------------------------------------------


void updateCoM

  ( Node*           node ,
    Body*           body )

{
  node->com.x = node->com.x*node->mass + body->pos.x*body->mass;
  node->com.y = node->com.y*node->mass + body->pos.y*body->mass;
  node->mass  = node->mass + body->mass;

  node->com.x = node->com.x/node->mass;
  node->com.y = node->com.y/node->mass;
}

//-----------------------------------------------------------------------------
//
//-----------------------------------------------------------------------------


int getChild

  ( QuadTree*       qt   ,
    Vector          pos  ,
    Node*           node )

{
  double cx = 0.5*( node->box.point2.x+node->box.point1.x );
  double cy = 0.5*( node->box.point2.y+node->box.point1.y );

  int childIdx = -1;
  int idx      = -1;

  if ( pos.x < cx )
  {
    if ( pos.y < cy )
    {
      childIdx = 0;
    }
    else
    {
      childIdx = 3;
    }
  }
  else
  {
    if ( pos.y < cy )
    {
      childIdx = 1;
    }
    else
    {
      childIdx = 2;
    }
  }

  idx = node->child[childIdx];

  if ( idx == -1 )   // Node does not exist
  {
    idx = initNode( qt , childIdx , &node->box );
    node->child[childIdx] = idx;
  }

  return idx;
}


//-----------------------------------------------------------------------------
//
//-----------------------------------------------------------------------------


void addBodyToNode

  ( QuadTree*       quadtree ,
    Body*           body     ,
    int             idx      )

{ 
  int newidx = -1;
   
  if ( quadtree->node[idx].nBod == 0 ) // Store body in this node
  {
    updateCoM( &quadtree->node[idx] , body );
    quadtree->node[idx].nBod  = 1;
    quadtree->node[idx].idx   = body->idx;
  }
  else if( quadtree->node[idx].nBod == 1 ) // Node was leaf, will be internal
  {
    Body body0;

    body0.pos.x = quadtree->node[idx].com.x;
    body0.pos.y = quadtree->node[idx].com.y;
    body0.mass  = quadtree->node[idx].mass;
    body0.idx   = quadtree->node[idx].idx;

    newidx = getChild( quadtree , body0.pos , &quadtree->node[idx] );
    addBodyToNode( quadtree , &body0 , newidx );

    newidx = getChild( quadtree , body->pos , &quadtree->node[idx] );
    addBodyToNode( quadtree , body , newidx );
    
    updateCoM( &quadtree->node[idx] , body );

    quadtree->node[idx].nBod++;
  }
  else // Node is internal
  {
    newidx = getChild( quadtree , body->pos , &quadtree->node[idx] );
    addBodyToNode( quadtree , body , newidx );
    
    updateCoM( &quadtree->node[idx] , body );
  }
}

//-----------------------------------------------------------------------------
//
//-----------------------------------------------------------------------------


void initQuadTree

  ( QuadTree*    qt , 
    double       length )

{
  qt->nNod = 1;

  qt->node[0].box.point1.x = -0.5*length;
  qt->node[0].box.point1.y = -0.5*length;
  qt->node[0].box.point2.x =  0.5*length;
  qt->node[0].box.point2.y =  0.5*length;
  
  qt->node[0].nBod = 0;

  qt->node[0].child[0] = -1;
  qt->node[0].child[1] = -1;
  qt->node[0].child[2] = -1;
  qt->node[0].child[3] = -1;
}


//-----------------------------------------------------------------------------
//
//-----------------------------------------------------------------------------


int initNode

  ( QuadTree*    qt       , 
    int          childIdx , 
    Box*         box      )

{
  const int idx = qt->nNod;

  qt->node[idx].box.point1.x = box->point1.x;
  qt->node[idx].box.point1.y = box->point1.y;
  qt->node[idx].box.point2.x = box->point2.x;
  qt->node[idx].box.point2.y = box->point2.y;

  Vector center;

  center.x = 0.5f*(box->point1.x+box->point2.x);
  center.y = 0.5f*(box->point1.y+box->point2.y);

  if ( childIdx == 0 )
  {
    qt->node[idx].box.point2.x = center.x;
    qt->node[idx].box.point2.y = center.y;
  }
  else if ( childIdx == 1 )
  {
    qt->node[idx].box.point1.x = center.x;
    qt->node[idx].box.point2.y = center.y;
  }
  else if ( childIdx == 2 )
  {
    qt->node[idx].box.point1.x = center.x;
    qt->node[idx].box.point1.y = center.y;
  }
  else if ( childIdx == 3 )
  {
    qt->node[idx].box.point1.y = center.y;
    qt->node[idx].box.point2.x = center.x;
  }

  qt->node[idx].child[0] = -1;
  qt->node[idx].child[1] = -1;
  qt->node[idx].child[2] = -1;
  qt->node[idx].child[3] = -1;
  qt->node[idx].nBod     =  0;

  qt->node[idx].com.x    = 0.;
  qt->node[idx].com.y    = 0.;
  qt->node[idx].mass     = 0.;
  qt->node[idx].idx      = idx;
 
  qt->nNod += 1;

  return idx;
}


//-----------------------------------------------------------------------------
//
//-----------------------------------------------------------------------------


void printQuadTree

  ( QuadTree*   qt )

{
  int iNod;

  for ( iNod = 0 ; iNod < qt->nNod ; iNod++ )
  {
    printf("Node %d, Box %e %e %e %e\n ",iNod,qt->node[iNod].box.point1.x ,
                                              qt->node[iNod].box.point1.y ,
                                              qt->node[iNod].box.point2.x ,
                                              qt->node[iNod].box.point2.y );
  }

  printf("The number of nodes is: %d\n",qt->nNod);
}

//-----------------------------------------------------------------------------
//	Solution part (a)
//-----------------------------------------------------------------------------

void gravitational_force		// Function to calculate and print the gravatational forces between bodies. 

	( BodyList*   blist)
{ 
	int i, j;
	float x_i, y_j, F_x, F_y;
	float sum_x[blist->nBod];
	float sum_y[blist->nBod];
	float grav_force[blist->nBod];
	
	for (i=0; i < blist->nBod; i++)
		{for (j=0; j < blist->nBod; j++)
			{
				if(i==j)
				{	j++;
						};
			x_i = blist->body[i].pos.x - blist->body[j].pos.x; // Displacement in X direction for bodies i and j
			y_j = blist->body[i].pos.y - blist->body[j].pos.y; // Displacement in Y direction for bodies i and j
			
			//printf ("%e and %e\n", x_i, y_j);
			F_x = (blist->body[i].mass)*(blist->body[j].mass)/(x_i*x_i); // Force in X direction on body i 
			F_y = (blist->body[i].mass)*(blist->body[j].mass)/(y_j*y_j); //	Force in Y direction on body i
			sum_x[i] = sum_x[i] + F_x;
			sum_y[i] = sum_y[i] + F_y;
			} 
			grav_force[i] = sqrt((sum_x[i]*sum_x[i]) + (sum_y[i]*sum_y[i])); //	Resultant gravitational force for each body
			printf("%e\n",grav_force[i]);		
	}
		
}
//-----------------------------------------------------------------------------
//
//-----------------------------------------------------------------------------
