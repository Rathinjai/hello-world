SQLite format 3   @                                                                  -�   � zA�                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  C_indexFilenameBrowseCREATE INDEX Filename ON Browse(Filename)4KindexTagBrowseCREATE INDEX Tag ON Browse(Tag)7OindexNameBrowseCREATE INDEX Name ON Browse(Name)��atableBrowseBrowseCREATE TABLE Browse (Kind INTEGER,Name TEXT,Tag TEXT,Filename TEXT,Lineno INTEGER,Text TEXT,Extra INTEGER)   �    �������� � C                                   Q	3ggravitational_forcemylib.cuvoid gravitational_force ( BodyList* blist) {C	'WprintQuadTreemylib.ccvoid printQuadTree ( QuadTree* qt ) {R
	initNodemylib.c%int initNode ( QuadTree* qt , int childIdx , Box* box ) {Q		%uinitQuadTreemylib.c
void initQuadTree ( QuadTree* qt , double length ) {a		'�addBodyToNodemylib.c �void addBodyToNode ( QuadTree* quadtree , Body* body , int idx ) {R	getChildmylib.c �int getChild ( QuadTree* qt , Vector pos , Node* node ) {F	eupdateCoMmylib.c �void updateCoM ( Node* node , Body* body ) {I	'cresetQuadTreemylib.c �void resetQuadTree ( QuadTree* quadtree ) {A	#YprintBodiesmylib.clvoid printBodies ( BodyList* blist ) {B	'WclearBodyListmylib.c^void clearBodyList ( BodyList *bl ) {_		�addBodymylib.cBint addBody ( BodyList *bl , Vector pos , Vector velo , double mass ) {J	oreadInputmylib.cv� �@   �T   �<   �&   �   �x   �T   �f   �    ���������8Ur�T��� ����� � ��3 � �� �
%/;GQ[e �oJy��� ��� ���;��� ��,�%�fscanf	fscanfprintf
fopen'clearBodyList	velopos	nBod	iBod!domainSize 	mass �vy �vx �y �x �fp �readInput �	name �
blist �	Body �BodyList �Box �'GRAV_CONSTANT �MYLIB_H �	Node �QuadTree �Vector �;__pobr_tag_mylib_h_0001 �;__pobr_tag_mylib_h_0002 �;__pobr_tag_mylib_h_0003 �;__pobr_tag_mylib_h_0004 �;__pobr_tag_mylib_h_0005 �;__pobr_tag_mylib_h_0006 �'addBodyToNode �
blist �	body �box �
child �
clock �
clock �com �!domainSize �
force �3gravitational_force �idx �idx �%initQuadTree �	main �malloc �malloc �	mass �	mass �	nBod �	nBod �	nNod �	node �point1 �point2 �pos �#printBodies �printf �qt �readInput �t0 �   3gravitational_force �   �    
�uz�������������������������$).38=BGLQV[`ejoty~���������������������%+17=CIOU[agmsy����������I, � �9;__pobr_tag_mylib_h_0002 �;__pobr_tag_mylib_h_0002 �;__pobr_tag_mylib_h_0002 �;__pobr_tag_mylib_h_0001 �>?ABCDEFGHIJKLMNOPQRSTUVWY[]^_abdefhijklmnoqrstuvwxyz{|} � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �   __pobr_tag_my �;__pobr_tag_mylib_h_0001 �   	;__pobr_tag_mylib_h_0001 �   �    ��#4EVgx�����9,��� � � � � � �FS`mz����������	#0=JWdq~��������� � � � � � mylib.cmylib.cmylib.cmylib.cmylib.c mylib.c �#barneshut.c �#barneshut.c �#barneshut.c �#barneshut.c �#barneshut.c �#barneshut.c �#barneshut.c �#barneshut.c �#barneshut.c �#barneshut.c �#barneshut.c �#barneshut.c �#barneshut.c �#barneshut.c �#barneshut.c �mylib.c �mylib.c �mylib.c �mylib.c �mylib.c �mylib.c �mylib.c �mylib.c �mylib.h �mylib.h �mylib.h �mylib.h �mylib.h �mylib.h �mylib.h �mylib.h �mylib.h �mylib.h �mylib.h �mylib.h �mylib.h �mylib.h �mylib.h �mylib.h �mylib.h �mylib.h �mylib.h �mylib.h �mylib.h �mylib.h �mylib.h �mylib.h �mylib.h �mylib.h �mylib.h �mylib.h �mylib.h �mylib.h �mylib.h �m   mylib.h �   mylib.c   � �7^����4Q|���������������    d	'�addBodyToNodemylib.c �void addBodyToNode ( QuadTree* quadtree , Body* body , int idx ) {   T	%uinitQuadTreemylib.c
void initQuadTree ( QuadTree* qt , double length ) {   U	initNodemylib.c%int initNode ( QuadTree* qt , int childIdx , Box* box ) {   F	'WprintQuadTreemylib.ccvoid printQuadTree ( QuadTree* qt ) {   T	3ggravitational_forcemylib.cyvoid gravitational_force ( BodyList* blist) {*�F	#1mainbarneshut.cint main( void ) {!�G#!t0barneshut.ctime_t t0,$�H#'t1barneshut.ctime_t t0,t1;+�I#/blistbarneshut.cBodyList *blist =�J#mallocbarneshut.c%�K#)qtbarneshut.cQuadTree *qt =�L#mallocbarneshut.c�M#readInputbarneshut.c �N##printBodiesbarneshut.c�O#clockbarneshut.c(�P3#gravitational_forcebarneshut.c �Q#clockbarneshut.c"!�R%#initQuadTreebarneshut.c'"�S'#addBodyToNodebarneshut.c+�T#printfbarneshut.c0    j  j � � �;l��U���#[�����u���                    :$;'force__pobr_tag_m�U
MYLIB_Hmylib.h�V'
GRAV_CONSTANTmylib.h2�W;y__pobr_tag_mylib_h_0001mylib.h!double y;2�X;x__pobr_tag_mylib_h_0001mylib.h double x;(�Y;__pobr_tag_mylib_h_0001mylib.h.�Z;Vector__pobr_tag_mylib_h_0001mylib.h"3�[;idx__pobr_tag_mylib_h_0002mylib.h/int idx;8�\;%mass__pobr_tag_mylib_h_0002mylib.h.double mass;:�];'force__pobr_tag_mylib_h_0002mylib.h-Vector force;8�^;%velo__pobr_tag_mylib_h_0002mylib.h,Vector velo;6�_;#pos__pobr_tag_mylib_h_0002mylib.h+Vector pos;(�`;__pobr_tag_mylib_h_0002mylib.h*,�a;Body__pobr_tag_mylib_h_0002mylib.h08�b;%body__pobr_tag_mylib_h_0003mylib.h<Body body[];5�c;nBod__pobr_tag_mylib_h_0003mylib.h;int nBod;D�d!;1domainSize__pobr_tag_mylib_h_0003mylib.h:double domainSize;(�e;__pobr_tag_mylib_h_0003mylib.h90�f;BodyList__pobr_tag_mylib_h_0003mylib.h=
   /a ar��������->O`mz����������	#0=JWdq~���������0=JWdq~���������ag_mylib_h_#barneshut.c �#barneshut.c �#barneshut.c �#barneshut.c �#barneshut.c �#barneshut.c �#barneshut.c �#barneshut.c �#barneshut.c �#barneshut.c �#barneshut.c �#barneshut.c �##barneshut.c �#barneshut.c �#barneshut.c �#barneshut.c �#barneshut.c �#barneshut.c �#barneshut.c �#barneshut.c �#barneshut.c �#barneshut.c �#barneshut.c �#barneshut.c �#barneshut.c �#barneshut.c �#barneshut.c �mylib.c �mylib.c �mylib.c �mylib.c �mylib.c �mylib.c �mylib.c �mylib.c �mylib.c �mylib.c mylib.cmylib.cmylib.cmylib.cmylib.cmylib.cmylib.cmylib.cmylib.c	mylib.c
mylib.cmylib.cmylib.cmylib.cmylib.cmylib.cmylib.cmylib.cmylib.cmylib.cmylib.cmylib.c
   p` ��������������� &,28>DJPV\bhntz����������������������
"(.4:@FLRX^djpv|���������������������������~xrlf`BA@?>=<;:9876543210/ONMLKJIHGFED � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � 	
 !"#$%&'()*+,-./0123456789:;<=>?@ABC
   + +He�����0Mj�����5Ro����Ro���� �)/:�c �5Ro����@ ����iF) � � � � � � �;__pobr_tag_mylib_h_0005 �;__pobr_tag_mylib_h_0005 �;__pobr_t;__pobr_tag_mylib_h_0006 � �;__pobr_tag_mylib_h_0006 �;__pobr_ta;__pobr_tag_mylib_h_0001 �;__pobr_tag_mylib_h_0001 �;__pobr_tag_mylib_h_0002 �;__pobr_tag_mylib_h_0002 �;__pobr_tag_mylib_h_0002 �;__pobr_tag_mylib_h_0002 �;__pobr_tag_mylib_h_0002 �;__pobr_tag_mylib_h_0002 �;__pobr_tag_mylib_h_0003 �;__pobr_tag_mylib_h_0003 �;__pobr_tag_mylib_h_0003 �;__pobr_tag_mylib_h_0003 �;__pobr_tag_mylib_h_0004 �;__pobr_tag_mylib_h_0004 �;__pobr_tag_mylib_h_0004 �;__pobr_tag_mylib_h_0005 �;__pobr_tag_mylib_h_0005 �;__pobr_tag_mylib_h_0005 �;__pobr_tag_mylib_h_0005 �;__pobr_tag_mylib_h_0005 �;__pobr_tag_mylib_h_0005 �;__pobr_tag_mylib_h_0005 �;__pobr_tag_mylib_h_0006 �;__pobr_tag_mylib_h_0006 �;__pobr_tag_mylib_h_0006 �
   8( v����������,9FS`mz����������	#0=JWdq~���������i\OB5(q~���������t getChild mylib.c(mylib.c)mylib.c*mylib.c+mylib.c,mylib.c-mylib.c.mylib.c/mylib.c0mylib.c1mylib.c2mylib.cOmylib.cNmylib.cMmylib.cLmylib.cKmylib.cJmylib.cmylib.cmylib.cmylib.cmylib.cmylib.cmylib.cmylib.cmylib.c mylib.c!mylib.c"mylib.c#mylib.c$mylib.c%mylib.c&mylib.c'mylib.c(mylib.c)mylib.c*mylib.c+mylib.c,mylib.c-mylib.c.mylib.c/mylib.c0mylib.c1mylib.c2mylib.c3mylib.c4mylib.c5mylib.c6mylib.c7mylib.c8mylib.c9mylib.c:mylib.c;mylib.c<mylib.c=mylib.c>mylib.c?mylib.c@mylib.cAmylib.cBmylib.cCmylib.cDmylib.cEmylib.cFmylib.cGmylib.cHmylib.cI                                      @ @ @          "d%nodemylib.c �Node* node ) � HeupdateCoMmylib.c �void updateCoM ( Node* node , Body* body ) {"b%nodemylib.c �Node* node ,"a%bodymylib.c �Body* body )� K'cresetQuadTreemylib.c �void resetQuadTree ( QuadTree* quadtree ) {._5quadtreemylib.c �QuadTree* quadtree )^printfmylib.cu]iBodmylib.cqint iBod; C#YprintBodiesmylib.clvoid printBodies ( BodyList* blist ) {'[/blistmylib.cnBodyList* blist ){ D'WclearBodyListmylib.c^void clearBodyList ( BodyList *bl ) {!Y)blmylib.c`BodyList *bl )   a�addBodymylib.cBint addBody ( BodyList *bl , Vector pos , Vector velo , double mass ) {!W)blmylib.cDBodyList *bl , V%posmylib.cEVector pos ,"U'velomylib.cFVector velo ,"T'massmylib.cGdouble mass )Sfclosemylib.c9RaddBodymylib.c6Qfscanfmylib.c/Pfscanfmylib.c)Ofscanfmylib.c(Nprintfmylib.c%
   < �  � � � � � �(4Qn������"5H[ckv������������+6AJRZjz���������� �� ��,�% fscanf	fscanf!grav_forceMF_yJF_xI	Body �BodyList �Box �'GRAV_CONSTANT �MYLIB_H �	Node �QuadTree �Vector �;__pobr_tag_mylib_h_0001 �;__pobr_tag_mylib_h_0002 �;__pobr_tag_mylib_h_0003 �;__pobr_tag_mylib_h_0004 �;__pobr_tag_mylib_h_0005 �;__pobr_tag_mylib_h_0006 �addBodyaddBody'addBodyToNode �'addBodyToNode)'addBodyToNode.'addBodyToNode0'addBodyToNode3blbl
blist �
blist �
blist
blistC	body �	body	body'
body0,box �box8center=
child �childIdx#childIdx9'clearBodyList'clearBodyList
clock �
clock �com �cx!cy"!domainSize �!domainSize fclose
fopen
force �fp �fscanffscanf	fscanf
getChild getChild-getChild/getChild2
   M �  � �)2;DMVdr� ����������� 
*4>HT`ir{�������� ���+9HW � � �jrz���������� ��� �printfO	sqrtN
sum_yL
sum_xKy_jHx_iGjFiE3gravitational_forceD	iBod	iBod	iNod@idx �idx �idx$idx&idx<initNode%initNode;%initQuadTree �%initQuadTree7length5	main �malloc �malloc �	mass �	mass �	mass �	mass	nBod �	nBod �	nBod	nNod �	name �newidx*	node �	node	nodepoint1 �point2 �pos �pospospos#printBodies �#printBodies'printQuadTree?printf �printfprintfprintfAprintfBqt �qtqt6qt:qt>quadtreequadtree(readInput �readInput �'resetQuadTreet0 �t1 �updateCoMupdateCoM+updateCoM1updateCoM4	velo �	velo	velovx �vy �x �x �y �y �    M ��m)��qL'���p � � � � n M����
%/;GQ[�&idxmylib.c �int idx )�%initNodemylib.c ��$idxmylib.c �int idx =(�#)childIdxmylib.c �int childIdx =�"#cymylib.c �double cy =�!#cxmylib.c �double cx =R� 	getChildmylib.c �int getChild ( QuadTree* qt , Vector pos , Node* node ) {"�)qtmylib.c �QuadTree* qt ,!�%posmylib.c �Vector pos ,"�%nodemylib.c �Node* node )F�	eupdateCoMmylib.c �void updateCoM ( Node* node , Body* body ) {"�%nodemylib.c �Node* node ,"�%bodymylib.c �Body* body )I�	'cresetQuadTreemylib.c �void resetQuadTree ( QuadTree* quadtree ) {.�5quadtreemylib.c �QuadTree* quadtree )�printfmylib.cu�iBodmylib.cqint iBod;A�	#YprintBodiesmylib.clvoid printBodies ( BodyList* blist ) {'�/blistmylib.cnBodyList* blist )B�	'WclearBodyListmylib.c^void clearBodyList ( BodyList *bl ) {!�)blmylib.c`BodyList *bl )
   !S S`mz����������	#0=JWdq~��������� � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �        	nNod � � 	y_j �y � � yC � 	x_i �x � � xB � vyE� vxD	velo �U KveloU! 	veloK updateCoM �U *updateCoM{� updateCoMx� updateCoMrt1 �t0 �� 3sum_y �� sum_x �� 
sqrt �� resetQuadTree �readInput �� )readInput �� quadtreeo� quadtree_qt �� qt � qt � qt} qtfprintf �P Mprintf �j .printf �j "printf �j printf^r printfNP printQuadTree �#printBodies �j mylib.h �mylib.h �mylib.h �mylib.h �mylib.h �mylib.h �mylib.h �mylib.h �mylib.h �mylib.h �mylib.h �mylib.h �mylib.h �mylib.h �mylib.h �mylib.h �mylib.h �mylib.h �mylib.h �mylib.h �mylib.h �mylib.h �mylib.h �mylib.h �mylib.h �mylib.h �mylib.h �mylib.h �mylib.h �mylib.h �mylib.h �mylib.h �mylib.h �    I ��wX5���];�����qV< � � � I       "}_�		�addBodymylib.cBint addBody ( BodyList *bl , Vector pos , Vector velo , double mass ) {!�)blmylib.cDBodyList *bl , �%posmylib.cEVector pos ,"�'velomylib.cFVector velo ,"�'massmylib.cGdouble mass )�fclosemylib.c9�addBodymylib.c6�
fscanfmylib.c/�	fscanfmylib.c)�fscanfmylib.c(�printfmylib.c%�fopenmylib.c#�'clearBodyListmylib.c!%�-velomylib.cVector pos,velo;�#posmylib.cVector pos,#�)nBodmylib.cint iBod,nBod;�iBodmylib.cint iBod,;� !MdomainSizemylib.cfloat x,y,vx,vy,mass,domainSize;*�7massmylib.cfloat x,y,vx,vy,mass,#�~-vymylib.cfloat x,y,vx,vy, �}'vxmylib.cfloat x,y,vx,�|!ymylib.cfloat x,y,�{xmylib.cfloat x,�zfpmylib.cFILE *fp;J�y	oreadInputmylib.cvoid readInput ( char* name , BodyList* blist ) {    � ��lJ/��z[9���O � ��                                                      3�IF_xmylib.czfloat x_i, y_j, R_square, F_x,3�?R_squaremylib.czfloat x_i, y_j, R!boxmylib.�Oprintfmylib.c��Nsqrtmylib.c�:�M!Igrav_forcemylib.c�float grav_force[blist->nBod];0�L?sum_ymylib.c�float sum_y[blist->nBod];0�K?sum_xmylib.cfloat sum_x[blist->nBod];.�J?F_ymylib.c~float x_i, y_j, F_x, F_y;)�I5F_xmylib.c~float x_i, y_j, F_x,$�H+y_jmylib.c~float x_i, y_j,�G!x_imylib.c~float x_i,�Fjmylib.c}int i, j;�Eimylib.c}int i,Q�D	3ggravitational_forcemylib.cyvoid gravitational_force ( BodyList* blist) {'�C-blistmylib.c{BodyList* blist)�Bprintfmylib.cr�Aprintfmylib.cl�@iNodmylib.chint iNod;C�?	'WprintQuadTreemylib.ccvoid printQuadTree ( QuadTree* qt ) {"�>)qtmylib.ceQuadTree* qt )&�=)centermylib.c3Vector center;    [ ��W)���E��z? � �  [ 5 5       �;%body__pobr_tag_mylib_h_000!�x%namemylib.cchar* name ,'�w/blistmylib.cBodyList* blist )0�v;QuadTree__pobr_tag_mylib_h_0006mylib.hd(�u;__pobr_tag_mylib_h_0006mylib.ha5�t;nNod__pobr_tag_mylib_h_0006mylib.hbint nNod;8�s;%node__pobr_tag_mylib_h_0006mylib.hcNode node[];,�r;Node__pobr_tag_mylib_h_0005mylib.hX(�q;__pobr_tag_mylib_h_0005mylib.hQ5�p;nBod__pobr_tag_mylib_h_0005mylib.hRint nBod;6�o;#com__pobr_tag_mylib_h_0005mylib.hSVector com;8�n;%mass__pobr_tag_mylib_h_0005mylib.hTdouble mass;3�m;idx__pobr_tag_mylib_h_0005mylib.hUint idx;:�l;'child__pobr_tag_mylib_h_0005mylib.hVint child[4];3�k;box__pobr_tag_mylib_h_0005mylib.hWBox box;+�j;Box__pobr_tag_mylib_h_0004mylib.hH(�i;__pobr_tag_mylib_h_0004mylib.hE<�h;)point1__pobr_tag_mylib_h_0004mylib.hFVector point1;<�g;)point2__pobr_tag_mylib_h_0004mylib.hGVector point2;
   #9 S`mz����������	#0=JWdq~���������F9FFFFFFFFFFF                                                                                                                                                                                                                                                                                                                                      mylib.c �mylib.c �mylib.c �mylib.c �mylib.c �mylib.c �mylib.c �mylib.c �mylib.c �mylib.c �mylib.c �mylib.h �mylib.h �mylib.c �mylib.h �mylib.h �mylib.h �mylib.h �mylib.h �mylib.h �mylib.h �mylib.h �mylib.h �mylib.h �mylib.h �mylib.h �mylib.h �mylib.h �mylib.h �mylib.h �mylib.h �mylib.h �mylib.h �mylib.h �mylib.h �mylib.h �mylib.h �mylib.h �mylib.h �mylib.h �mylib.h �mylib.h �mylib.h �mylib.h �mylib.h �mylib.h �    R ��F����^@#���@ � � y R           �T#printfb$�<+idxmylib.c,const int idx =R�;	initNodemylib.c%int initNode ( QuadTree* qt , int childIdx , Box* box ) {"�:)qtmylib.c'QuadTree* qt ,(�9)childIdxmylib.c(int childIdx ,�8!boxmylib.c)Box* box )Q�7	%uinitQuadTreemylib.c
void initQuadTree ( QuadTree* qt , double length ) {"�6)qtmylib.cQuadTree* qt ,'�5+lengthmylib.cdouble length )�4updateCoMmylib.c�3'addBodyToNodemylib.c ��2getChildmylib.c ��1updateCoMmylib.c ��0'addBodyToNodemylib.c ��/getChildmylib.c ��.'addBodyToNodemylib.c ��-getChildmylib.c �"�,#body0mylib.c �Body body0;�+updateCoMmylib.c �$�*%newidxmylib.c �int newidx =a�)		'�addBodyToNodemylib.c �void addBodyToNode ( QuadTree* quadtree , Body* body , int idx ) {.�(5quadtreemylib.c �QuadTree* quadtree ,"�'%bodymylib.c �Body* body ,