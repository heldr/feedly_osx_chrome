FasdUAS 1.101.10   ��   ��    k             l      ��  ��   
 * Creates an application shortcut in Google Chrome.
 * It's derived from Bracken King's shell script, who deserves all the credit for the idea, see
 * http://www.lessannoyingsoftware.com/blog/2010/08/149/Create+application+shortcuts+in+Google+Chrome+on+a+Mac
 * I just wanted to make this functionality usable for a couple of friends who never want to see a terminal screen.
 * This is also my first real AppleScript attempt, so many things could probably be optimized, enhanced, etc. Feel free to do so.
 *
 * Mait Vilbiks <happy@hot.ee> @2011-01
 * Provided AS IS, "Public domain", ie. no licence required for anything you do with this, and don't blame me if it doesn't work either.
 * Written and tested on Mac OS X 10.5.8
 *
 * Helder Santana @2013-05
 * Feedly mac webapp for Chrome
      � 	 	. 
   *   C r e a t e s   a n   a p p l i c a t i o n   s h o r t c u t   i n   G o o g l e   C h r o m e . 
   *   I t ' s   d e r i v e d   f r o m   B r a c k e n   K i n g ' s   s h e l l   s c r i p t ,   w h o   d e s e r v e s   a l l   t h e   c r e d i t   f o r   t h e   i d e a ,   s e e 
   *   h t t p : / / w w w . l e s s a n n o y i n g s o f t w a r e . c o m / b l o g / 2 0 1 0 / 0 8 / 1 4 9 / C r e a t e + a p p l i c a t i o n + s h o r t c u t s + i n + G o o g l e + C h r o m e + o n + a + M a c 
   *   I   j u s t   w a n t e d   t o   m a k e   t h i s   f u n c t i o n a l i t y   u s a b l e   f o r   a   c o u p l e   o f   f r i e n d s   w h o   n e v e r   w a n t   t o   s e e   a   t e r m i n a l   s c r e e n . 
   *   T h i s   i s   a l s o   m y   f i r s t   r e a l   A p p l e S c r i p t   a t t e m p t ,   s o   m a n y   t h i n g s   c o u l d   p r o b a b l y   b e   o p t i m i z e d ,   e n h a n c e d ,   e t c .   F e e l   f r e e   t o   d o   s o . 
   * 
   *   M a i t   V i l b i k s   < h a p p y @ h o t . e e >   @ 2 0 1 1 - 0 1 
   *   P r o v i d e d   A S   I S ,   " P u b l i c   d o m a i n " ,   i e .   n o   l i c e n c e   r e q u i r e d   f o r   a n y t h i n g   y o u   d o   w i t h   t h i s ,   a n d   d o n ' t   b l a m e   m e   i f   i t   d o e s n ' t   w o r k   e i t h e r . 
   *   W r i t t e n   a n d   t e s t e d   o n   M a c   O S   X   1 0 . 5 . 8 
   * 
   *   H e l d e r   S a n t a n a   @ 2 0 1 3 - 0 5 
   *   F e e d l y   m a c   w e b a p p   f o r   C h r o m e 
     
  
 l     ��������  ��  ��        l     ����  r         m        �      o      ���� 0 err  ��  ��        l     ��������  ��  ��        l    ����  r        c        4    �� 
�� 
psxf  l    ����  b        l     ����   n     ! " ! 1    ��
�� 
psxp " l    #���� # I   �� $��
�� .earsffdralis        afdr $  f    ��  ��  ��  ��  ��    m     % % � & &  / . .��  ��    m    ��
�� 
ctxt  o      ���� 0 
currentdir 
currentDir��  ��     ' ( ' l     ��������  ��  ��   (  ) * ) l     �� + ,��   + ) # find the Google Chrome application    , � - - F   f i n d   t h e   G o o g l e   C h r o m e   a p p l i c a t i o n *  . / . l     0���� 0 r      1 2 1 c     3 4 3 n     5 6 5 1    ��
�� 
psxp 6 l    7���� 7 I   �� 8��
�� .earsffdralis        afdr 8 m     9 9�                                                                                  rimZ  alis    h  Macintosh HD               �<F�H+  	/��Google Chrome.app                                               
��U�        ����  	                Applications    �<q      �U6�    	/��  ,Macintosh HD:Applications: Google Chrome.app  $  G o o g l e   C h r o m e . a p p    M a c i n t o s h   H D  Applications/Google Chrome.app  / ��  ��  ��  ��   4 m    ��
�� 
ctxt 2 o      ���� "0 gchromeorigpath gChromeOrigPath��  ��   /  : ; : l     �� < =��   < D > parse the folder of the app, this is where we put the new app    = � > > |   p a r s e   t h e   f o l d e r   o f   t h e   a p p ,   t h i s   i s   w h e r e   w e   p u t   t h e   n e w   a p p ;  ? @ ? l  ! 5 A���� A r   ! 5 B C B I   ! 3�� D���� 0 dirname   D  E�� E e   " / F F c   " / G H G n   " - I J I 7  # -�� K L
�� 
cha  K m   ' )����  L m   * ,������ J o   " #���� "0 gchromeorigpath gChromeOrigPath H m   - .��
�� 
TEXT��  ��   C o      ���� 0 gapproot gAppRoot��  ��   @  M N M l     �� O P��   O 0 * the full path to Google Chrome executable    P � Q Q T   t h e   f u l l   p a t h   t o   G o o g l e   C h r o m e   e x e c u t a b l e N  R S R l  6 ? T���� T r   6 ? U V U n   6 ; W X W 1   9 ;��
�� 
strq X l  6 9 Y���� Y b   6 9 Z [ Z o   6 7���� "0 gchromeorigpath gChromeOrigPath [ m   7 8 \ \ � ] ] 8 C o n t e n t s / M a c O S / G o o g l e   C h r o m e��  ��   V o      ���� 0 gchromepath gChromePath��  ��   S  ^ _ ^ l     ��������  ��  ��   _  ` a ` l     �� b c��   b "  name of the new application    c � d d 8   n a m e   o f   t h e   n e w   a p p l i c a t i o n a  e f e l  @ G g���� g r   @ G h i h m   @ C j j � k k  F e e d l y i o      ���� 0 gappname gAppName��  ��   f  l m l l     ��������  ��  ��   m  n o n l     �� p q��   p    make the folder structure    q � r r 4   m a k e   t h e   f o l d e r   s t r u c t u r e o  s t s l  H � u���� u Q   H � v w�� v k   K | x x  y z y I  K a�� {��
�� .sysoexecTEXT���     TEXT { b   K ] | } | m   K N ~ ~ �    r m   - r f   / t m p / } I   N \�� ����� 0 replacetext ReplaceText �  � � � o   O R���� 0 gappname gAppName �  � � � m   R U � � � � �    �  ��� � m   U X � � � � �  \  ��  ��  ��   z  ��� � I  b |�� ���
�� .sysoexecTEXT���     TEXT � b   b x � � � m   b e � � � � �  r m   - r f   / t m p / � I   e w�� ����� 0 replacetext ReplaceText �  � � � b   f m � � � o   f i���� 0 gappname gAppName � m   i l � � � � �  . a p p �  � � � m   m p � � � � �    �  ��� � m   p s � � � � �  \  ��  ��  ��  ��   w R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  ��   t  � � � l  �2 ����� � O   �2 � � � k   �1 � �  � � � r   � � � � � I  � ����� �
�� .corecrel****      � null��   � �� � �
�� 
kocl � m   � ���
�� 
cfol � �� � �
�� 
insh � l  � � ����� � 4   � ��� �
�� 
psxf � m   � � � � � � �  / t m p��  ��   � �� ���
�� 
prdt � K   � � � � �� ���
�� 
pnam � o   � ����� 0 gappname gAppName��  ��   � o      ���� 0 
gappfolder 
gAppFolder �  � � � r   � � � � � I  � ����� �
�� .corecrel****      � null��   � �� � �
�� 
kocl � m   � ���
�� 
cfol � �� � �
�� 
insh � o   � ����� 0 
gappfolder 
gAppFolder � �� ���
�� 
prdt � K   � � � � �� ���
�� 
pnam � m   � � � � � � �  C o n t e n t s��  ��   � o      ���� 0 gcontfolder gContFolder �  � � � I  � ����� �
�� .corecrel****      � null��   � �� � �
�� 
kocl � m   � ���
�� 
cfol � �� � �
�� 
insh � o   � ����� 0 gcontfolder gContFolder � �� ���
�� 
prdt � K   � � � � �� ���
�� 
pnam � m   � � � � � � �  R e s o u r c e s��  ��   �  � � � I  ����� �
�� .corecrel****      � null��   � �� � �
�� 
kocl � m   � ��
� 
cfol � �~ � �
�~ 
insh � o   ��}�} 0 gcontfolder gContFolder � �| ��{
�| 
prdt � K   � � �z ��y
�z 
pnam � m  
 � � � � � 
 M a c O S�y  �{   �  ��x � I 1�w�v �
�w .corecrel****      � null�v   � �u � �
�u 
kocl � m  �t
�t 
cfol � �s � �
�s 
insh � o   �r�r 0 gcontfolder gContFolder � �q ��p
�q 
prdt � K  #+ � � �o ��n
�o 
pnam � m  &) � � � � �  P r o f i l e�n  �p  �x   � m   � � � ��                                                                                  MACS  alis    t  Macintosh HD               �<F�H+  	/�}
Finder.app                                                     	1y���b        ����  	                CoreServices    �<q      �͒    	/�}	/�w	/�v  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ��  ��   �  � � � l     �m�l�k�m  �l  �k   �  � � � l     �j � ��j   �  	 App Icon    � � � �    A p p   I c o n �  � � � l 3B ��i�h � r  3B � � � n  3> � � � 1  <>�g
�g 
psxp � l 3< ��f�e � b  3< � � � l 38 ��d�c � c  38 � � � o  36�b�b 0 gcontfolder gContFolder � m  67�a
�a 
TEXT�d  �c   � m  8; � � � � �  R e s o u r c e s : i c o n .�f  �e   � o      �`�` 0 gappicon gAppIcon�i  �h   �  � � � l C� ��_�^ � Q  C� �  � k  F�  r  FK m  FG�]
�] boovfals o      �\�\ 0 goticon gotIcon �[ W  L�	 k  T�

  l TT�Z�Z     an icon image    �    a n   i c o n   i m a g e  r  T_ c  T[ b  TY o  TU�Y�Y 0 
currentdir 
currentDir m  UX �  f e e d l y . p n g m  YZ�X
�X 
ctxt o      �W�W 0 gappiconsrc gAppIconSrc  l ``�V�V   , & image size conversion, saving as TIFF    � L   i m a g e   s i z e   c o n v e r s i o n ,   s a v i n g   a s   T I F F   O  `�!"! k  f�## $%$ I fk�U�T�S
�U .ascrnoop****      � ****�T  �S  % &'& r  lw()( I ls�R*�Q
�R .aevtodocnull  �    alis* o  lo�P�P 0 gappiconsrc gAppIconSrc�Q  ) o      �O�O 0 
this_image  ' +,+ I x��N-.
�N .coresavenull���     obj - o  x{�M�M 0 
this_image  . �L/0
�L 
fltp/ m  ~��K
�K typvTIFF0 �J1�I
�J 
kfil1 b  ��232 o  ���H�H 0 gappicon gAppIcon3 m  ��44 �55  t i f f�I  , 676 r  ��898 m  ���G
�G boovtrue9 o      �F�F 0 goticon gotIcon7 :;: l ���E�D�C�E  �D  �C  ; <�B< I ���A=�@
�A .coreclosnull���     obj = o  ���?�? 0 
this_image  �@  �B  " m  `c>>�                                                                                  imev  alis    �  Macintosh HD               �<F�H+  	/�}Image Events.app                                               	2ɛ�Ԡ        ����  	                CoreServices    �<q      ���    	/�}	/�w	/�v  <Macintosh HD:System: Library: CoreServices: Image Events.app  "  I m a g e   E v e n t s . a p p    M a c i n t o s h   H D  ,System/Library/CoreServices/Image Events.app  / ��    ?@? l ���>AB�>  A !  convert the tiff into icon   B �CC 6   c o n v e r t   t h e   t i f f   i n t o   i c o n@ D�=D I ���<E�;
�< .sysoexecTEXT���     TEXTE b  ��FGF b  ��HIH m  ��JJ �KK & t i f f 2 i c n s   - n o L a r g e  I n  ��LML 1  ���:
�: 
strqM l ��N�9�8N b  ��OPO o  ���7�7 0 gappicon gAppIconP m  ��QQ �RR  t i f f�9  �8  G m  ��SS �TT    > &   / d e v / n u l l�;  �=  	 o  PS�6�6 0 goticon gotIcon�[    R      �5UV
�5 .ascrerr ****      � ****U o      �4�4 0 errtext errTextV �3WX
�3 
errnW o      �2�2 0 errnum errNumX �1YZ
�1 
erobY o      �0�0 0 frerr frErrZ �/[�.
�/ 
errt[ o      �-�- 0 toerr toErr�.   Z  ��\]�,^\ l ��_�+�*_ = ��`a` o  ���)�) 0 errnum errNuma m  ���(�(���+  �*  ] k  ��bb cdc l ���'ef�'  e + % Cancel click, so use the Chrome icon   f �gg J   C a n c e l   c l i c k ,   s o   u s e   t h e   C h r o m e   i c o nd h�&h I ���%i�$
�% .sysoexecTEXT���     TEXTi b  ��jkj b  ��lml b  ��non m  ��pp �qq  c p   - p  o n  ��rsr 1  ���#
�# 
strqs l ��t�"�!t b  ��uvu n  ��wxw 1  ��� 
�  
psxpx o  ���� "0 gchromeorigpath gChromeOrigPathv m  ��yy �zz 6 C o n t e n t s / R e s o u r c e s / a p p . i c n s�"  �!  m m  ��{{ �||   k n  ��}~} 1  ���
� 
strq~ l ���� b  ����� o  ���� 0 gappicon gAppIcon� m  ���� ���  i c n s�  �  �$  �&  �,  ^ r  ����� b  ����� b  ����� b  ����� b  ����� m  ���� ��� ^ S o m e   e r r o r   o c c u r e d   w h i l e   p r o c e s s i n g   t h e   i m a g e :  � o  ���� 0 errtext errText� m  ���� ���    (� o  ���� 0 errnum errNum� m  ���� ���  )� o      �� 0 err  �_  �^   � ��� l     ����  �  �  � ��� l �b���� Z  �b����� = ���� o  � �� 0 err  � m   �� ���  � k  ^�� ��� l ����  �   write the executable   � ��� *   w r i t e   t h e   e x e c u t a b l e� ��� r  ��� b  ��� b  ��� m  
�� ��� � # ! / b i n / s h 
 i a m = " $ 0 " 
 p r o f D i r = $ ( d i r n a m e   " $ i a m " ) 
 p r o f D i r = $ ( d i r n a m e   " $ p r o f D i r " ) 
 p r o f D i r = " $ p r o f D i r / P r o f i l e " 
 e x e c  � o  
�� 0 gchromepath gChromePath� m  �� ��� �   - - a p p = h t t p : / / c l o u d . f e e d l y . c o m /     - - u s e r - d a t a - d i r = " $ p r o f D i r "   " $ @ "   - - e n a b l e - e x t e n s i o n s 
� o      �� 0 	gexeccont 	gExecCont� ��� r  (��� b  $��� b   ��� l ���� c  ��� o  �
�
 0 gcontfolder gContFolder� m  �	
�	 
TEXT�  �  � m  �� ���  M a c O S :� o   #�� 0 gappname gAppName� o      �� 0 gexecutable gExecutable� ��� r  )8��� I )4���
� .rdwropenshor       file� o  ),�� 0 gexecutable gExecutable� ���
� 
perm� m  /0�
� boovtrue�  � o      �� 0 fp1  � ��� I 9F� ��
�  .rdwrwritnull���     ****� o  9<���� 0 	gexeccont 	gExecCont� �����
�� 
refn� o  ?B���� 0 fp1  ��  � ��� I GN�����
�� .rdwrclosnull���     ****� o  GJ���� 0 fp1  ��  � ��� l OO��������  ��  ��  � ��� l OO������  �   set exec permissions   � ��� *   s e t   e x e c   p e r m i s s i o n s� ���� I O^�����
�� .sysoexecTEXT���     TEXT� b  OZ��� m  OR�� ���  c h m o d   7 5 5  � n  RY��� 1  WY��
�� 
strq� n  RW��� 1  UW��
�� 
psxp� o  RU���� 0 gexecutable gExecutable��  ��  �  �  �  �  � ��� l     ��������  ��  ��  � ��� l     ������  �   write the Info.plist   � ��� *   w r i t e   t h e   I n f o . p l i s t� ��� l c������� Z  c�������� = ch��� o  cd���� 0 err  � m  dg�� ���  � k  k��� ��� r  kz��� b  kv��� b  kr��� m  kn�� ���� < ? x m l   v e r s i o n = " 1 . 0 "   e n c o d i n g = " U T F - 8 " ? > 
 < ! D O C T Y P E   p l i s t   P U B L I C   " - / / A p p l e / / D T D   P L I S T   1 . 0 / / E N "   " h t t p : / / w w w . a p p l e . c o m / D T D s / P r o p e r t y L i s t - 1 . 0 . d t d " > 
 < p l i s t   v e r s i o n = " 1 . 0 " > 
 < d i c t > 
 < k e y > C F B u n d l e E x e c u t a b l e < / k e y > 
 < s t r i n g >� o  nq���� 0 gappname gAppName� m  ru�� ��� � < / s t r i n g > 
 < k e y > C F B u n d l e I c o n F i l e < / k e y > 
 < s t r i n g > i c o n < / s t r i n g > 
 < / d i c t > 
 < / p l i s t > 
� o      ���� 0 
gplistcont 
gPlistCont� ��� r  {���� I {���� 
�� .rdwropenshor       file� l {����� b  {� l {����� c  {� o  {~���� 0 gcontfolder gContFolder m  ~��
�� 
TEXT��  ��   m  �� �  I n f o . p l i s t��  ��    ��	��
�� 
perm	 m  ����
�� boovtrue��  � o      ���� 0 fp2  � 

 I ����
�� .rdwrwritnull���     **** o  ������ 0 
gplistcont 
gPlistCont ����
�� 
refn o  ������ 0 fp2  ��   �� I ������
�� .rdwrclosnull���     **** o  ������ 0 fp2  ��  ��  ��  ��  ��  ��  �  l     ��������  ��  ��    l ������ r  �� b  �� o  ������ 0 gappname gAppName m  �� �  . a p p o      ���� 0 gapp gApp��  ��    l ������ O  ��  k  ��!! "#" r  ��$%$ o  ������ 0 gapp gApp% n      &'& 1  ����
�� 
pnam' o  ������ 0 
gappfolder 
gAppFolder# (��( I ����)*
�� .coremoveobj        obj ) l ��+����+ c  ��,-, 4  ����.
�� 
psxf. l ��/����/ b  ��010 m  ��22 �33 
 / t m p /1 o  ������ 0 gapp gApp��  ��  - m  ����
�� 
alis��  ��  * ��45
�� 
insh4 4  ����6
�� 
cfol6 o  ������ 0 
currentdir 
currentDir5 ��7��
�� 
alrp7 m  ����
�� boovtrue��  ��    m  ��88�                                                                                  MACS  alis    t  Macintosh HD               �<F�H+  	/�}
Finder.app                                                     	1y���b        ����  	                CoreServices    �<q      �͒    	/�}	/�w	/�v  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ��  ��   9:9 l     ��������  ��  ��  : ;<; l     ��������  ��  ��  < =>= l     ��������  ��  ��  > ?@? l      ��AB��  A  
 * functions
    B �CC  
   *   f u n c t i o n s 
  @ DED l     ��������  ��  ��  E FGF l     ��������  ��  ��  G HIH l     ��JK��  J X R http://hohabadu.de/?APPLESCRIPT/Praktische-Handler/Datei-oder-Ordner-vorhanden%3F   K �LL �   h t t p : / / h o h a b a d u . d e / ? A P P L E S C R I P T / P r a k t i s c h e - H a n d l e r / D a t e i - o d e r - O r d n e r - v o r h a n d e n % 3 FI MNM i     OPO I      ��Q����  0 checkexistence CheckExistenceQ R��R o      ���� 60 fileorfoldertocheckstring FileOrFolderToCheckString��  ��  P Q     STUS k    VV WXW 4    ��Y
�� 
alisY o    ���� 60 fileorfoldertocheckstring FileOrFolderToCheckStringX Z��Z L   	 [[ m   	 
��
�� boovtrue��  T R      ������
�� .ascrerr ****      � ****��  ��  U L    \\ m    ��
�� boovfalsN ]^] l     ��������  ��  ��  ^ _`_ l     ��ab��  a / ) http://www.alecjacobson.com/weblog/?p=49   b �cc R   h t t p : / / w w w . a l e c j a c o b s o n . c o m / w e b l o g / ? p = 4 9` ded i    fgf I      ��h���� 0 last_offset  h iji o      ���� 0 the_text  j k��k o      ���� 0 char  ��  ��  g k     >ll mnm Q     ;opqo k    1rr sts r    
uvu I   ��w��
�� .corecnte****       ****w o    ���� 0 the_text  ��  v o      ���� 0 len  t xyx r    z{z c    |}| n    ~~ 1    ��
�� 
rvse n    ��� 2   ��
�� 
cha � o    ���� 0 the_text  } m    ��
�� 
TEXT{ o      ���� 0 reversed  y ��� r    $��� [    "��� \     ��� o    ���� 0 len  � l   ������ I   �����
�� .sysooffslong    ��� null��  � ����
�� 
psof� o    �� 0 char  � �~��}
�~ 
psin� o    �|�| 0 reversed  �}  ��  ��  � m     !�{�{ � o      �z�z 0 last_occurrence  � ��y� Z   % 1���x�w� ?   % (��� o   % &�v�v 0 last_occurrence  � o   & '�u�u 0 len  � L   + -�� m   + ,�t�t  �x  �w  �y  p R      �s�r�q
�s .ascrerr ****      � ****�r  �q  q L   9 ;�� m   9 :�p�p  n ��o� L   < >�� o   < =�n�n 0 last_occurrence  �o  e ��� l     �m�l�k�m  �l  �k  � ��� l     �j���j  � / ) http://www.alecjacobson.com/weblog/?p=52   � ��� R   h t t p : / / w w w . a l e c j a c o b s o n . c o m / w e b l o g / ? p = 5 2� ��� i    ��� I      �i��h�i 0 dirname  � ��g� o      �f�f 0 the_path  �g  �h  � k     \�� ��� r     	��� I     �e��d�e 0 last_offset  � ��� o    �c�c 0 the_path  � ��b� m    �� ���  /�b  �d  � o      �a�a 0 last_occurrence  � ��� Z   
 ���`�_� =  
 ��� o   
 �^�^ 0 last_occurrence  � m    �]�]  � L    �� m    �� ���  .�`  �_  � ��� Z    #���\�[� =   ��� o    �Z�Z 0 last_occurrence  � m    �Y�Y � L    �� m    �� ���  /�\  �[  � ��� Z   $ K���X�W� =  $ +��� o   $ %�V�V 0 last_occurrence  � l  % *��U�T� I  % *�S��R
�S .corecnte****       ****� o   % &�Q�Q 0 the_path  �R  �U  �T  � k   . G�� ��� r   . ?��� c   . =��� n   . ;��� 7  / ;�P��
�P 
cobj� m   3 5�O�O � l  6 :��N�M� \   6 :��� o   7 8�L�L 0 last_occurrence  � m   8 9�K�K �N  �M  � o   . /�J�J 0 the_path  � m   ; <�I
�I 
TEXT� o      �H�H 0 the_path  � ��G� L   @ G�� I   @ F�F��E�F 0 dirname  � ��D� o   A B�C�C 0 the_path  �D  �E  �G  �X  �W  � ��B� L   L \�� c   L [��� n   L Y��� 7  M Y�A��
�A 
cobj� m   Q S�@�@ � l  T X��?�>� \   T X��� o   U V�=�= 0 last_occurrence  � m   V W�<�< �?  �>  � o   L M�;�; 0 the_path  � m   Y Z�:
�: 
TEXT�B  � ��� l     �9�8�7�9  �8  �7  � ��� l     �6���6  � O I http://lists.apple.com/archives/Applescript-users/2005/Nov/msg00008.html   � ��� �   h t t p : / / l i s t s . a p p l e . c o m / a r c h i v e s / A p p l e s c r i p t - u s e r s / 2 0 0 5 / N o v / m s g 0 0 0 0 8 . h t m l� ��� i    ��� I      �5��4�5 0 replacetext ReplaceText� ��� o      �3�3 0 	thestring 	theString� ��� o      �2�2 0 fstring fString� ��1� o      �0�0 0 rstring rString�1  �4  � k     &�� ��� r     ��� n    ��� 1    �/
�/ 
txdl� 1     �.
�. 
ascr� o      �-�- (0 current_delimiters current_Delimiters� � � r     o    �,�, 0 fstring fString n      1    
�+
�+ 
txdl 1    �*
�* 
ascr   r     n    	
	 2    �)
�) 
citm
 o    �(�( 0 	thestring 	theString o      �'�' 0 slist sList  r     o    �&�& 0 rstring rString n      1    �%
�% 
txdl 1    �$
�$ 
ascr  r     c     o    �#�# 0 slist sList m    �"
�" 
TEXT o      �!�! 0 	newstring 	newString  r    # o    � �  (0 current_delimiters current_Delimiters n      1     "�
� 
txdl 1     �
� 
ascr � L   $ & o   $ %�� 0 	newstring 	newString�  �   l     ����  �  �    !�! l     ����  �  �  �       *�"#$%&' ()*+ j,-.�/012�3�4�������
�	��������� �  " (����������������������������������������������������������������������������������  0 checkexistence CheckExistence�� 0 last_offset  �� 0 dirname  �� 0 replacetext ReplaceText
�� .aevtoappnull  �   � ****�� 0 err  �� 0 
currentdir 
currentDir�� "0 gchromeorigpath gChromeOrigPath�� 0 gapproot gAppRoot�� 0 gchromepath gChromePath�� 0 gappname gAppName�� 0 
gappfolder 
gAppFolder�� 0 gcontfolder gContFolder�� 0 gappicon gAppIcon�� 0 goticon gotIcon�� 0 gappiconsrc gAppIconSrc�� 0 
this_image  �� 0 	gexeccont 	gExecCont�� 0 gexecutable gExecutable�� 0 fp1  �� 0 
gplistcont 
gPlistCont�� 0 fp2  �� 0 gapp gApp��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  # ��P����56����  0 checkexistence CheckExistence�� ��7�� 7  ���� 60 fileorfoldertocheckstring FileOrFolderToCheckString��  5 ���� 60 fileorfoldertocheckstring FileOrFolderToCheckString6 ������
�� 
alis��  ��  ��  *�/EOeW 	X  f$ ��g����89���� 0 last_offset  �� ��:�� :  ������ 0 the_text  �� 0 char  ��  8 ������������ 0 the_text  �� 0 char  �� 0 len  �� 0 reversed  �� 0 last_occurrence  9 
��������������������
�� .corecnte****       ****
�� 
cha 
�� 
rvse
�� 
TEXT
�� 
psof
�� 
psin�� 
�� .sysooffslong    ��� null��  ��  �� ? 3�j  E�O��-�,�&E�O�*��� kE�O�� jY hW 	X  	jO�% �������;<���� 0 dirname  �� ��=�� =  ���� 0 the_path  ��  ; ������ 0 the_path  �� 0 last_occurrence  < ��������������� 0 last_offset  
�� .corecnte****       ****
�� 
cobj
�� 
TEXT�� 0 dirname  �� ]*��l+ E�O�j  �Y hO�k  �Y hO��j   �[�\[Zk\Z�k2�&E�O*�k+ Y hO�[�\[Zk\Z�k2�&& �������>?���� 0 replacetext ReplaceText�� ��@�� @  �������� 0 	thestring 	theString�� 0 fstring fString�� 0 rstring rString��  > �������������� 0 	thestring 	theString�� 0 fstring fString�� 0 rstring rString�� (0 current_delimiters current_Delimiters�� 0 slist sList�� 0 	newstring 	newString? ��������
�� 
ascr
�� 
txdl
�� 
citm
�� 
TEXT�� '��,E�O���,FO��-E�O���,FO��&E�O���,FO�' ��A����BC��
�� .aevtoappnull  �   � ****A k    �DD  EE  FF  .GG  ?HH  RII  eJJ  sKK  �LL  �MM  �NN �OO �PP QQ ����  ��  ��  B ���������� 0 errtext errText�� 0 errnum errNum�� 0 frerr frErr�� 0 toerr toErrC c �������� %���� 9���������� \���� j�� ~ � ����� � � � ���~ ��}�|�{ ��z�y�x�w�v ��u � � � ��t�s�r>�q�p�o�n�m�l4�k�j�iJQS�hR�gpy{��������f��e�d�c�b�a�`�_�����^�]�\2�[�Z�Y�� 0 err  
�� 
psxf
�� .earsffdralis        afdr
�� 
psxp
�� 
ctxt�� 0 
currentdir 
currentDir�� "0 gchromeorigpath gChromeOrigPath
�� 
cha 
�� 
TEXT�� 0 dirname  �� 0 gapproot gAppRoot
�� 
strq�� 0 gchromepath gChromePath�� 0 gappname gAppName�� 0 replacetext ReplaceText
�� .sysoexecTEXT���     TEXT�  �~  
�} 
kocl
�| 
cfol
�{ 
insh
�z 
prdt
�y 
pnam�x 
�w .corecrel****      � null�v 0 
gappfolder 
gAppFolder�u 0 gcontfolder gContFolder�t 0 gappicon gAppIcon�s 0 goticon gotIcon�r 0 gappiconsrc gAppIconSrc
�q .ascrnoop****      � ****
�p .aevtodocnull  �    alis�o 0 
this_image  
�n 
fltp
�m typvTIFF
�l 
kfil�k 
�j .coresavenull���     obj 
�i .coreclosnull���     obj �h 0 errtext errTextR �X�WS
�X 
errn�W 0 errnum errNumS �V�UT
�V 
erob�U 0 frerr frErrT �T�S�R
�T 
errt�S 0 toerr toErr�R  �g���f 0 	gexeccont 	gExecCont�e 0 gexecutable gExecutable
�d 
perm
�c .rdwropenshor       file�b 0 fp1  
�a 
refn
�` .rdwrwritnull���     ****
�_ .rdwrclosnull���     ****�^ 0 
gplistcont 
gPlistCont�] 0 fp2  �\ 0 gapp gApp
�[ 
alis
�Z 
alrp
�Y .coremoveobj        obj ����E�O*�)j �,�%/�&E�O�j �,�&E�O*�[�\[Zk\Zi2�&k+ E�O��%�,E` Oa E` O 6a *_ a a m+ %j Oa *_ a %a a m+ %j W X  hOa  �*a a  a !)�a "/a #a $_ la % &E` 'O*a a  a !_ 'a #a $a (la % &E` )O*a a  a !_ )a #a $a *la % &O*a a  a !_ )a #a $a +la % &O*a a  a !_ )a #a $a ,la % &UO_ )�&a -%�,E` .O zfE` /O nh_ /�a 0%�&E` 1Oa 2 ;*j 3O_ 1j 4E` 5O_ 5a 6a 7a 8_ .a 9%a : ;OeE` /O_ 5j <UOa =_ .a >%�,%a ?%j [OY��W BX @ A�a B  $a C��,a D%�,%a E%_ .a F%�,%j Y a G�%a H%�%a I%E�O�a J  \a K_ %a L%E` MO_ )�&a N%_ %E` OO_ Oa Pel QE` RO_ Ma S_ Rl TO_ Rj UOa V_ O�,�,%j Y hO�a W  @a X_ %a Y%E` ZO_ )�&a [%a Pel QE` \O_ Za S_ \l TO_ \j UY hO_ a ]%E` ^Oa  /_ ^_ 'a $,FO*�a __ ^%/a `&a !*a  �/a aea : bU( �UU b M a c i n t o s h   H D : U s e r s : h e l d e r : t e m p : f e e d l y _ o s x _ c h r o m e :) �VV @ / A p p l i c a t i o n s / G o o g l e   C h r o m e . a p p /* �WW  / A p p l i c a t i o n s+ �XX | ' / A p p l i c a t i o n s / G o o g l e   C h r o m e . a p p / C o n t e n t s / M a c O S / G o o g l e   C h r o m e ', YY Z�Q[Z \�P]\ ^�O_^  ��N
�N 
sdsk
�O 
cobj_ �``  p r i v a t e
�P 
cfol] �aa  t m p
�Q 
cfol[ �bb  F e e d l y- cc d�Med f�Lgf h�Kih j�Jkj  ��I
�I 
sdsk
�J 
cobjk �ll  p r i v a t e
�K 
cfoli �mm  t m p
�L 
cfolg �nn  F e e d l y
�M 
cfole �oo  C o n t e n t s. �pp X / p r i v a t e / t m p / F e e d l y / C o n t e n t s / R e s o u r c e s / i c o n .
� boovtrue/ �qq v M a c i n t o s h   H D : U s e r s : h e l d e r : t e m p : f e e d l y _ o s x _ c h r o m e : f e e d l y . p n g0 rr >�Hs
�H 
imags �tt  f e e d l y . p n g1 �uu� # ! / b i n / s h 
 i a m = " $ 0 " 
 p r o f D i r = $ ( d i r n a m e   " $ i a m " ) 
 p r o f D i r = $ ( d i r n a m e   " $ p r o f D i r " ) 
 p r o f D i r = " $ p r o f D i r / P r o f i l e " 
 e x e c   ' / A p p l i c a t i o n s / G o o g l e   C h r o m e . a p p / C o n t e n t s / M a c O S / G o o g l e   C h r o m e '   - - a p p = h t t p : / / c l o u d . f e e d l y . c o m /     - - u s e r - d a t a - d i r = " $ p r o f D i r "   " $ @ "   - - e n a b l e - e x t e n s i o n s 
2 �vv j M a c i n t o s h   H D : p r i v a t e : t m p : F e e d l y : C o n t e n t s : M a c O S : F e e d l y� 3 �wwH < ? x m l   v e r s i o n = " 1 . 0 "   e n c o d i n g = " U T F - 8 " ? > 
 < ! D O C T Y P E   p l i s t   P U B L I C   " - / / A p p l e / / D T D   P L I S T   1 . 0 / / E N "   " h t t p : / / w w w . a p p l e . c o m / D T D s / P r o p e r t y L i s t - 1 . 0 . d t d " > 
 < p l i s t   v e r s i o n = " 1 . 0 " > 
 < d i c t > 
 < k e y > C F B u n d l e E x e c u t a b l e < / k e y > 
 < s t r i n g > F e e d l y < / s t r i n g > 
 < k e y > C F B u n d l e I c o n F i l e < / k e y > 
 < s t r i n g > i c o n < / s t r i n g > 
 < / d i c t > 
 < / p l i s t > 
� 4 �xx  F e e d l y . a p p�  �  �  �  �  �  �
  �	  �  �  �  �  �  �  �  �  �   ascr  ��ޭ