 s e t   n o c o m p a t i b l e                             "   b e   i M p r o v e d ,   r e q u i r e d  
 f i l e t y p e   o f f                                     "   r e q u i r e d  
  
 s e t   e n c o d i n g = u t f - 8  
 s e t   f i l e e n c o d i n g = u t f - 8  
  
 "   a d j u s t   c o n f i g u r a t i o n   f o r   s u c h   h o s t i l e   e n v i r o n m e n t   a s   w i n d o w s   { { {  
 i f   h a s ( " w i n 3 2 " )   | |   h a s ( " w i n 1 6 " )  
     l e t   R _ p a t h   =   " c : \ \ r r o \ \ r - 3 . 2 . 3 \ \ b i n \ \ x 6 4 "  
     l e t   R _ a r g s   =   [ ' - - s d i ' ,     ' - - n o - s a v e ' ,     ' - - q u i e t ' ,     ' - - i n t e r n e t 2 ' ]  
     l e t   R _ l a t e x c m d   =   ' x e l a t e x '  
     l e t   R _ s t a r t _ l i b s   =   " b a s e , s t a t s , g r a p h i c s , g r D e v i c e s , u t i l s , m e t h o d s "  
     l e t   R _ s h o w _ a r g s   =   1  
     s o u r c e   $ v i m r u n t i m e / m s w i n . v i m  
     s e t   g u i f o n t = s a u c e _ c o d e _ p o w e r l i n e : h 1 2  
     s e t   r t p + = ~ \ v i m f i l e s \ b u n d l e \ n e o b u n d l e . v i m  
     l e t   n e o b u n d l e p a t h = ' ~ \ v i m f i l e s \ b u n d l e \ '  
     l e t   o s   =   ' w i n 3 2 '  
 e l s e i f   h a s ( " g u i _ m a c v i m " )  
     l e t   o s   =   ' m a c '  
     s e t   g u i f o n t = s a u c e \   c o d e \   p o w e r l i n e \   l i g h t : h 1 4  
 e l s e  
     l e t   o s = s u b s t i t u t e ( s y s t e m ( ' u n a m e ' ) ,   ' \ n ' ,   ' ' ,   ' ' )  
     i f   o s   = =   ' d a r w i n '   | |   o s   = =   ' m a c '  
         l e t   o s   =   ' m a c '  
     e n d i f  
 e n d i f  
  
 i f   o s   = =   ' m a c '   | |   o s   = =   ' l i n u x '   | |   o s   = =   ' L i n u x '  
 "   s e t   t h e   r u n t i m e   p a t h   t o   i n c l u d e   v u n d l e    
     s e t   r t p + = ~ / . v i m / b u n d l e / n e o b u n d l e . v i m /  
     l e t   n e o b u n d l e p a t h = ' ~ / . v i m / b u n d l e '  
 e n d i f  
 "   } } }  
 "  
  
  
 "   N e o b u n d l e   s e t u p   { { {  
 "   i n i t i a l i z e   V u n d l e  
 c a l l   n e o b u n d l e # b e g i n ( n e o b u n d l e p a t h )  
  
     N e o B u n d l e F e t c h   ' S h o u g o / n e o b u n d l e . v i m '  
  
 N e o B u n d l e   ' S h o u g o / v i m p r o c . v i m ' ,   {  
             \   ' b u i l d '   :   {  
             \           ' w i n d o w s '   :   ' t o o l s \ \ u p d a t e - d l l - m i n g w ' ,  
             \           ' c y g w i n '   :   ' m a k e   - f   m a k e _ c y g w i n . m a k ' ,  
             \           ' m a c '   :   ' m a k e ' ,  
             \           ' l i n u x '   :   ' m a k e ' ,  
             \           ' u n i x '   :   ' g m a k e ' ,  
             \         } ,  
             \   }  
  
     N e o B u n d l e   ' m a t c h i t . z i p '  
     N e o B u n d l e   ' s c r o o l o o s e / n e r d t r e e '  
     N e o B u n d l e   ' s c r o o l o o s e / n e r d c o m m e n t e r '  
     "     N e o B u n d l e   ' c t r l p v i m / c t r l p . v i m '  
     N e o B u n d l e   ' f l a z z / v i m - c o l o r s c h e m e s '  
     " N e o B u n d l e   ' v i m - l a t e x / v i m - l a t e x '  
     " N e o B u n d l e   ' c o o t / a t p _ v i m '  
     N e o B u n d l e   ' a i r b l a d e / v i m - g i t g u t t e r '  
     N e o B u n d l e   ' b l i n g / v i m - a i r l i n e '  
     N e o B u n d l e   ' t p o p e / v i m - f u g i t i v e '  
     N e o B u n d l e   ' s c r o o l o o s e / s y n t a s t i c '  
     N e o B u n d l e L a z y   ' j a l v e s a q / N v i m - R ' ,  
                 \   { ' a u t o l o a d '   :   { ' f i l e t y p e s '   :   [ ' r ' , ' r m d ' , ' r n o w e b ' ] } }  
     N e o B u n d l e L a z y   ' m l l g / v i m - d e v t o o l s - p l u g i n ' ,  
                 \   { ' a u t o l o a d '   :   { ' f i l e t y p e s '   :   [ ' r ' , ' r m d ' , ' r n o w e b ' ] } }  
     N e o B u n d l e   ' t p o p e / v i m - s e n s i b l e '  
     N e o B u n d l e   ' x o l o x / v i m - m i s c '  
     N e o B u n d l e   ' S h o u g o / v i m s h e l l . v i m '  
     N e o B u n d l e   ' S h o u g o / n e o m r u . v i m '  
     i f   h a s ( " l u a " )  
         N e o B u n d l e   ' S h o u g o / n e o c o m p l e t e . v i m '  
     e n d i f  
     N e o B u n d l e   ' m h i n z / v i m - s i g n i f y '  
     N e o B u n d l e   ' o b l i t u m / r a i n b o w '  
     N e o B u n d l e   ' A l i g n '  
     N e o B u n d l e L a z y   ' k l e n / p y t h o n - m o d e ' ,     {  
             \   ' a u t o l o a d ' :   {  
             \       ' f i l e t y p e s ' :   [ ' p y t h o n ' ]  
             \   } }  
     N e o B u n d l e L a z y   ' d e r e k w y a t t / v i m - s c a l a ' ,   {  
             \   ' a u t o l o a d ' :   {  
             \       ' f i l e t y p e s ' :   [ ' s c a l a ' ]  
             \   } }  
     N e o B u n d l e L a z y   ' v i m - p a n d o c / v i m - p a n d o c ' ,   {  
             \   ' a u t o l o a d ' :   {  
             \       ' f i l e t y p e s ' :   [ ' t e x t ' ,   ' p a n d o c ' ,   ' m a r k d o w n ' ,   ' r s t ' ] ,  
             \   } }  
     N e o B u n d l e L a z y   ' v i m - p a n d o c / v i m - p a n d o c - s y n t a x ' ,   {  
             \   ' a u t o l o a d ' :   {  
             \       ' f i l e t y p e s ' :   [ ' t e x t ' ,   ' p a n d o c ' ,   ' m a r k d o w n ' ,   ' r s t ' ] ,  
             \   } }  
     N e o B u n d l e L a z y   ' v i m - p a n d o c / v i m - r m a r k d o w n '   ,   {  
             \   ' a u t o l o a d ' :   {  
             \       ' f i l e t y p e s ' :   [ ' r m d ' ,   ' r n o w e b ' ,   ' m a r k d o w n ' ] ,  
             \   } }  
     N e o B u n d l e   ' c a k e b a k e r / s c s s - s y n t a x . v i m '  
     N e o B u n d l e   ' i d a n a r y e / v i m - m e r g i n a l '  
  
     N e o B u n d l e   ' K o n f e k t / F a s t F o l d '  
      
 "   A l l   o f   y o u r   P l u g i n s   m u s t   b e   a d d e d   b e f o r e   t h e   f o l l o w i n g   l i n e  
 c a l l   n e o b u n d l e # e n d ( )     "   r e q u i r e d  
 N e o B u n d l e C h e c k  
 "   } } }  
  
 f i l e t y p e   p l u g i n   i n d e n t   o n         "   r e q u i r e d  
 s y n   o n  
 s y n   m a t c h   t e x I n p u t F i l e             " \ \ \ ( e p s f i g \ | i n p u t \ | u s e p a c k a g e \ | r i n l i n e \ | l s t i n l i n e \ ) \ s * \ ( \ [ . * \ ] \ ) \ = { . \ { - } } "             c o n t a i n s = t e x S t a t e m e n t , t e x I n p u t C u r l i e s , t e x I n p u t F i l e O p t  
 s y n   m a t c h   r n o w e b             " \ \ \ ( e p s f i g \ | i n p u t \ | u s e p a c k a g e \ | r i n l i n e \ | l s t i n l i n e \ ) \ s * \ ( \ [ . * \ ] \ ) \ = { . \ { - } } "             c o n t a i n s = t e x S t a t e m e n t , t e x I n p u t C u r l i e s , t e x I n p u t F i l e O p t  
 s e t   h i d d e n  
  
 "   T a b   s e t t i n g s   { { {  
 s e t   e x p a n d t a b  
 s e t   t a b s t o p = 2  
 s e t   s h i f t w i d t h = 2  
 "   } } }  
  
 s e t   t w = 7 9  
  
 "   S e t t i n g s   f o r   a i r l i n e   { { {  
 i f   e x i s t s ( ' : A i r l i n e T o g g l e ' )  
     l e t   g : a i r l i n e # e x t e n s i o n s # t a b l i n e # e n a b l e d   =   1  
     s e t   l a s t s t a t u s = 2  
     i f   h a s ( " g u i _ r u n n i n g " )  
         l e t   g : a i r l i n e _ p o w e r l i n e _ f o n t s   =   1  
         i f   ! e x i s t s ( ' g : a i r l i n e _ s y m b o l s ' )  
             l e t   g : a i r l i n e _ s y m b o l s   =   { }  
         e n d i f  
         l e t   g : a i r l i n e _ s y m b o l s . s p a c e   =   " \ u a 0 "  
     e n d i f  
 e n d i f  
 "   } } }  
  
 "   S e t t i n g s   f o r   f u g i t i v e   { { {  
 n n o r e m a p   < l e a d e r > g s   : G s t a t u s < c r >  
 n n o r e m a p   < l e a d e r > g c   : G c o m m i t < c r >  
 n n o r e m a p   < l e a d e r > g w   : G w r i t e < c r >  
 n n o r e m a p   < l e a d e r > g h   : G p u s h < c r >  
 n n o r e m a p   < l e a d e r > g l   : G p u l l < c r >  
 "   } } }  
  
 "   S e t t i n g s   f o r   N e o c o m p l e t e   { { {  
 i f   e x i s t s ( " : N e o C o m p l e t e E n a b l e " )    
     " N o t e :   T h i s   o p t i o n   m u s t   s e t   i t   i n   . v i m r c ( _ v i m r c ) .     N O T   I N   . g v i m r c ( _ g v i m r c ) !  
     "   D i s a b l e   A u t o C o m p l P o p .  
     l e t   g : a c p _ e n a b l e A t S t a r t u p   =   0  
     "   U s e   n e o c o m p l e t e .  
     l e t   g : n e o c o m p l e t e # e n a b l e _ a t _ s t a r t u p   =   1  
     "   U s e   s m a r t c a s e .  
     l e t   g : n e o c o m p l e t e # e n a b l e _ s m a r t _ c a s e   =   1  
     "   S e t   m i n i m u m   s y n t a x   k e y w o r d   l e n g t h .  
     l e t   g : n e o c o m p l e t e # s o u r c e s # s y n t a x # m i n _ k e y w o r d _ l e n g t h   =   3  
     l e t   g : n e o c o m p l e t e # l o c k _ b u f f e r _ n a m e _ p a t t e r n   =   ' \ * k u \ * '  
  
     "   D e f i n e   d i c t i o n a r y .  
     l e t   g : n e o c o m p l e t e # s o u r c e s # d i c t i o n a r y # d i c t i o n a r i e s   =   {  
                 \   ' d e f a u l t '   :   ' ' ,  
                 \   ' v i m s h e l l '   :   $ H O M E . ' / . v i m s h e l l _ h i s t ' ,  
                 \   ' s c h e m e '   :   $ H O M E . ' / . g o s h _ c o m p l e t i o n s '  
                 \   }  
  
     "   D e f i n e   k e y w o r d .  
     i f   ! e x i s t s ( ' g : n e o c o m p l e t e # k e y w o r d _ p a t t e r n s ' )  
         l e t   g : n e o c o m p l e t e # k e y w o r d _ p a t t e r n s   =   { }  
     e n d i f  
     l e t   g : n e o c o m p l e t e # k e y w o r d _ p a t t e r n s [ ' d e f a u l t ' ]   =   ' \ h \ w * '  
  
     "   P l u g i n   k e y - m a p p i n g s .  
     i n o r e m a p   < e x p r > < C - g >           n e o c o m p l e t e # u n d o _ c o m p l e t i o n ( )  
     i n o r e m a p   < e x p r > < C - l >           n e o c o m p l e t e # c o m p l e t e _ c o m m o n _ s t r i n g ( )  
  
     "   R e c o m m e n d e d   k e y - m a p p i n g s .  
     "   < C R > :   c l o s e   p o p u p   a n d   s a v e   i n d e n t .  
     i n o r e m a p   < s i l e n t >   < C R >   < C - r > = < S I D > m y _ c r _ f u n c t i o n ( ) < C R >  
     f u n c t i o n !   s : m y _ c r _ f u n c t i o n ( )  
         r e t u r n   ( p u m v i s i b l e ( )   ?   " \ < C - y > "   :   " "   )   .   " \ < C R > "  
         "   F o r   n o   i n s e r t i n g   < C R >   k e y .  
         " r e t u r n   p u m v i s i b l e ( )   ?   " \ < C - y > "   :   " \ < C R > "  
     e n d f u n c t i o n  
     "   < T A B > :   c o m p l e t i o n .  
     i n o r e m a p   < e x p r > < T A B >     p u m v i s i b l e ( )   ?   " \ < C - n > "   :   " \ < T A B > "  
     "   < C - h > ,   < B S > :   c l o s e   p o p u p   a n d   d e l e t e   b a c k w o r d   c h a r .  
     i n o r e m a p   < e x p r > < C - h >   n e o c o m p l e t e # s m a r t _ c l o s e _ p o p u p ( ) . " \ < C - h > "  
     i n o r e m a p   < e x p r > < B S >   n e o c o m p l e t e # s m a r t _ c l o s e _ p o p u p ( ) . " \ < C - h > "  
     "   C l o s e   p o p u p   b y   < S p a c e > .  
     " i n o r e m a p   < e x p r > < S p a c e >   p u m v i s i b l e ( )   ?   " \ < C - y > "   :   " \ < S p a c e > "  
  
     "   A u t o C o m p l P o p   l i k e   b e h a v i o r .  
     " l e t   g : n e o c o m p l e t e # e n a b l e _ a u t o _ s e l e c t   =   1  
  
     "   S h e l l   l i k e   b e h a v i o r ( n o t   r e c o m m e n d e d ) .  
     " s e t   c o m p l e t e o p t + = l o n g e s t  
     " l e t   g : n e o c o m p l e t e # e n a b l e _ a u t o _ s e l e c t   =   1  
     " l e t   g : n e o c o m p l e t e # d i s a b l e _ a u t o _ c o m p l e t e   =   1  
     " i n o r e m a p   < e x p r > < T A B >     p u m v i s i b l e ( )   ?   " \ < D o w n > "   :   " \ < C - x > \ < C - u > "  
  
     "   E n a b l e   o m n i   c o m p l e t i o n .  
     a u t o c m d   F i l e T y p e   c s s   s e t l o c a l   o m n i f u n c = c s s c o m p l e t e # C o m p l e t e C S S  
     a u t o c m d   F i l e T y p e   h t m l , m a r k d o w n   s e t l o c a l   o m n i f u n c = h t m l c o m p l e t e # C o m p l e t e T a g s  
     a u t o c m d   F i l e T y p e   j a v a s c r i p t   s e t l o c a l   o m n i f u n c = j a v a s c r i p t c o m p l e t e # C o m p l e t e J S  
     a u t o c m d   F i l e T y p e   p y t h o n   s e t l o c a l   o m n i f u n c = p y t h o n c o m p l e t e # C o m p l e t e  
     a u t o c m d   F i l e T y p e   x m l   s e t l o c a l   o m n i f u n c = x m l c o m p l e t e # C o m p l e t e T a g s  
  
     "   E n a b l e   h e a v y   o m n i   c o m p l e t i o n .  
     i f   ! e x i s t s ( ' g : n e o c o m p l e t e # s o u r c e s # o m n i # i n p u t _ p a t t e r n s ' )  
         l e t   g : n e o c o m p l e t e # s o u r c e s # o m n i # i n p u t _ p a t t e r n s   =   { }  
     e n d i f  
     " l e t   g : n e o c o m p l e t e # s o u r c e s # o m n i # i n p u t _ p a t t e r n s . p h p   =   ' [ ^ .   \ t ] - > \ h \ w * \ | \ h \ w * : : '  
     " l e t   g : n e o c o m p l e t e # s o u r c e s # o m n i # i n p u t _ p a t t e r n s . c   =   ' [ ^ . [ : d i g i t : ]   * \ t ] \ % ( \ . \ | - > \ ) '  
     " l e t   g : n e o c o m p l e t e # s o u r c e s # o m n i # i n p u t _ p a t t e r n s . c p p   =   ' [ ^ . [ : d i g i t : ]   * \ t ] \ % ( \ . \ | - > \ ) \ | \ h \ w * : : '  
 e n d i f  
 "   } } }  
  
 "   S e t t i n g s   f o r   s i g n i f y   { { {  
 i f   e x i s t s ( " : S i g n i f y T o g g l e " )  
     i f   o s   = =   ' M a c '   | |   o s   = =   ' L i n u x '  
         l e t   g : s i g n i f y _ v c s _ l i s t   =   [   ' g i t ' ,   ' h g '   ]  
     e l s e i f   o s   = =   ' W i n 3 2 '  
         l e t   g : s i g n i f y _ v c s _ l i s t   =   [   ' g i t '   ]  
     e n d i f  
     h i g h l i g h t   S i g n i f y S i g n A d d         c t e r m f g = 2 2   g u i f g = # 0 0 5 f 0 0   g u i b g = # 4 C A D 3 2   g u i = b o l d  
     h i g h l i g h t   S i g n i f y S i g n D e l e t e   c t e r m f g = 8 8   g u i f g = # 8 7 0 0 0 0   g u i b g = # E 7 1 A 0 B   g u i = b o l d  
     h i g h l i g h t   S i g n i f y S i g n C h a n g e   c t e r m f g = 1 3 0   g u i f g = # a f 5 f 0 0   g u i b g = # C 9 3 5 7 0   g u i = b o l d  
     h i g h l i g h t   S i g n C o l u m n     g u i b g = # 2 4 2 4 2 4  
     l e t   g : s i g n i f y _ d i s a b l e _ b y _ d e f a u l t   =   0  
     n n o r e m a p   < l e a d e r > g r   S i g n i f y R e f r e s h  
 e n d i f  
 "   } } }  
  
 s e t   a u t o i n d e n t  
 s e t   n u m b e r  
  
 "   S e t t i n g s   f o r   s y n t a s t i c   { { {  
 i f   e x i s t s ( ' : S y n t a s t i c I n f o ' )  
     s e t   s t a t u s l i n e + = % # w a r n i n g m s g #  
     s e t   s t a t u s l i n e + = % { f u g i t i v e # s t a t u s l i n e ( ) }  
     s e t   s t a t u s l i n e + = % { S y n t a s t i c S t a t u s l i n e F l a g ( ) }  
     s e t   s t a t u s l i n e + = % *  
  
     l e t   g : s y n t a s t i c _ a l w a y s _ p o p u l a t e _ l o c _ l i s t   =   1  
     l e t   g : s y n t a s t i c _ a u t o _ l o c _ l i s t   =   1  
     l e t   g : s y n t a s t i c _ c h e c k _ o n _ o p e n   =   1  
     l e t   g : s y n t a s t i c _ c h e c k _ o n _ w q   =   0  
     "   C o n f i g u r a t i o n   f o r   l i n t r   { { {  
     l e t   g : s y n t a s t i c _ e n a b l e _ r _ l i n t r _ c h e c k e r   =   1  
     l e t   g : s y n t a s t i c _ r _ c h e c k e r s   =   [ ' l i n t r ' ]  
     l e t   g : s y n t a s t i c _ l o c _ l i s t _ h e i g h t = 5  
     "   } } }  
 e n d i f  
 "   } } }  
  
  
 "   F o l d i n g   { { {  
 s e t   f o l d e n a b l e                      
 s e t   f o l d l e v e l s t a r t = 1 5       "   o p e n   m o s t   f o l d s   b y   d e f a u l t  
 s e t   f o l d m e t h o d = i n d e n t  
 "   s p a c e   o p e n / c l o s e s   f o l d s  
 n n o r e m a p   < s p a c e >   z a  
 "   } } }  
  
 "   S h o r t - c u t s   { { {  
 "   N E R D - t r e e   { { {  
 i f   e x i s t s ( " : N E R D T r e e T o g g l e " )  
     m a p   < C - n >   : N E R D T r e e T o g g l e < C R >  
 e n d i f  
 "   } } }  
 "   c t r l - p   { { {  
 i f   e x i s t s ( " : C t r l P " )  
     l e t   g : c t r l p _ m a p   =   ' < c - p > '  
     l e t   g : c t r l p _ c m d   =   ' C t r l P '  
 e n d i f  
 "   } } }  
 "   } } }  
  
 "   S e t t i n g s   f o r   n e o c o m p l e t e   { { {  
 "   N o t e :   T h i s   o p t i o n   m u s t   s e t   i t   i n   . v i m r c ( _ v i m r c ) .     N O T   I N   . g v i m r c ( _ g v i m r c ) !  
 "   D i s a b l e   A u t o C o m p l P o p .  
 i f   e x i s t s ( ' : N e o C o m p l e t e E n a b l e ' )  
     l e t   g : a c p _ e n a b l e A t S t a r t u p   =   0  
     "   U s e   n e o c o m p l e t e .  
     l e t   g : n e o c o m p l e t e # e n a b l e _ a t _ s t a r t u p   =   1  
     "   U s e   s m a r t c a s e .  
     l e t   g : n e o c o m p l e t e # e n a b l e _ s m a r t _ c a s e   =   1  
     "   S e t   m i n i m u m   s y n t a x   k e y w o r d   l e n g t h .  
     l e t   g : n e o c o m p l e t e # s o u r c e s # s y n t a x # m i n _ k e y w o r d _ l e n g t h   =   3  
     l e t   g : n e o c o m p l e t e # l o c k _ b u f f e r _ n a m e _ p a t t e r n   =   ' \ * k u \ * '  
  
     "   D e f i n e   d i c t i o n a r y .  
     l e t   g : n e o c o m p l e t e # s o u r c e s # d i c t i o n a r y # d i c t i o n a r i e s   =   {  
                 \   ' d e f a u l t '   :   ' ' ,  
                 \   ' v i m s h e l l '   :   $ H O M E . ' / . v i m s h e l l _ h i s t ' ,  
                 \   ' s c h e m e '   :   $ H O M E . ' / . g o s h _ c o m p l e t i o n s '  
                 \   }  
  
     "   D e f i n e   k e y w o r d .  
     i f   ! e x i s t s ( ' g : n e o c o m p l e t e # k e y w o r d _ p a t t e r n s ' )  
         l e t   g : n e o c o m p l e t e # k e y w o r d _ p a t t e r n s   =   { }  
     e n d i f  
     l e t   g : n e o c o m p l e t e # k e y w o r d _ p a t t e r n s [ ' d e f a u l t ' ]   =   ' \ h \ w * '  
  
     "   P l u g i n   k e y - m a p p i n g s .  
     i n o r e m a p   < e x p r > < C - g >           n e o c o m p l e t e # u n d o _ c o m p l e t i o n ( )  
     i n o r e m a p   < e x p r > < C - l >           n e o c o m p l e t e # c o m p l e t e _ c o m m o n _ s t r i n g ( )  
  
     "   R e c o m m e n d e d   k e y - m a p p i n g s .  
     "   < C R > :   c l o s e   p o p u p   a n d   s a v e   i n d e n t .  
     i n o r e m a p   < s i l e n t >   < C R >   < C - r > = < S I D > m y _ c r _ f u n c t i o n ( ) < C R >  
     f u n c t i o n !   s : m y _ c r _ f u n c t i o n ( )  
         r e t u r n   n e o c o m p l e t e # c l o s e _ p o p u p ( )   .   " \ < C R > "  
         "   F o r   n o   i n s e r t i n g   < C R >   k e y .  
         " r e t u r n   p u m v i s i b l e ( )   ?   n e o c o m p l e t e # c l o s e _ p o p u p ( )   :   " \ < C R > "  
     e n d f u n c t i o n  
     "   < T A B > :   c o m p l e t i o n .  
     i n o r e m a p   < e x p r > < T A B >     p u m v i s i b l e ( )   ?   " \ < C - n > "   :   " \ < T A B > "  
     "   < C - h > ,   < B S > :   c l o s e   p o p u p   a n d   d e l e t e   b a c k w o r d   c h a r .  
     i n o r e m a p   < e x p r > < C - h >   n e o c o m p l e t e # s m a r t _ c l o s e _ p o p u p ( ) . " \ < C - h > "  
     i n o r e m a p   < e x p r > < B S >   n e o c o m p l e t e # s m a r t _ c l o s e _ p o p u p ( ) . " \ < C - h > "  
     i n o r e m a p   < e x p r > < C - y >     n e o c o m p l e t e # c l o s e _ p o p u p ( )  
     i n o r e m a p   < e x p r > < C - e >     n e o c o m p l e t e # c a n c e l _ p o p u p ( )  
     "   C l o s e   p o p u p   b y   < S p a c e > .  
     " i n o r e m a p   < e x p r > < S p a c e >   p u m v i s i b l e ( )   ?   n e o c o m p l e t e # c l o s e _ p o p u p ( )   :   " \ < S p a c e > "  
  
     "   E n a b l e   o m n i   c o m p l e t i o n .  
     " a u t o c m d   F i l e T y p e   c s s   s e t l o c a l   o m n i f u n c = c s s c o m p l e t e # C o m p l e t e C S S  
     a u t o c m d   F i l e T y p e   h t m l , m a r k d o w n   s e t l o c a l   o m n i f u n c = h t m l c o m p l e t e # C o m p l e t e T a g s  
     a u t o c m d   F i l e T y p e   j a v a s c r i p t   s e t l o c a l   o m n i f u n c = j a v a s c r i p t c o m p l e t e # C o m p l e t e J S  
     " a u t o c m d   F i l e T y p e   p y t h o n   s e t l o c a l   o m n i f u n c = p y t h o n c o m p l e t e # C o m p l e t e  
     a u t o c m d   F i l e T y p e   x m l   s e t l o c a l   o m n i f u n c = x m l c o m p l e t e # C o m p l e t e T a g s  
  
     "   E n a b l e   h e a v y   o m n i   c o m p l e t i o n .  
     i f   ! e x i s t s ( ' g : n e o c o m p l e t e # s o u r c e s # o m n i # i n p u t _ p a t t e r n s ' )  
         l e t   g : n e o c o m p l e t e # s o u r c e s # o m n i # i n p u t _ p a t t e r n s   =   { }  
     e n d i f  
     " l e t   g : n e o c o m p l e t e # s o u r c e s # o m n i # i n p u t _ p a t t e r n s . p h p   =   ' [ ^ .   \ t ] - > \ h \ w * \ | \ h \ w * : : '  
     " l e t   g : n e o c o m p l e t e # s o u r c e s # o m n i # i n p u t _ p a t t e r n s . c   =   ' [ ^ . [ : d i g i t : ]   * \ t ] \ % ( \ . \ | - > \ ) '  
     " l e t   g : n e o c o m p l e t e # s o u r c e s # o m n i # i n p u t _ p a t t e r n s . c p p   =   ' [ ^ . [ : d i g i t : ]   * \ t ] \ % ( \ . \ | - > \ ) \ | \ h \ w * : : '  
 e n d i f  
 "   } } }  
  
  
 "   a l l o w   b a c k s p a c i n g   o v e r   e v e r y t h i n g   i n   i n s e r t   m o d e  
 s e t   b a c k s p a c e = i n d e n t , e o l , s t a r t  
  
 s e t   b a c k u p 	 	 "   k e e p   a   b a c k u p   f i l e  
 s e t   h i s t o r y = 1 0 0 	 	 "   k e e p   1 0 0   l i n e s   o f   c o m m a n d   l i n e   h i s t o r y  
 s e t   r u l e r 	 	 "   s h o w   t h e   c u r s o r   p o s i t i o n   a l l   t h e   t i m e  
 s e t   s h o w c m d 	 	 "   d i s p l a y   i n c o m p l e t e   c o m m a n d s  
 s e t   i n c s e a r c h 	 	 "   d o   i n c r e m e n t a l   s e a r c h i n g  
 i f   o s   = =   ' M a c '   | |   o s   = =   ' L i n u x '  
     s e t   t a g s + = ~ / . v i m / s y s t a g s  
     s e t   b a c k u p d i r = ~ / . v i m / b a c k u p , ~ / t m p  
 e l s e i f   o s   = =   ' W i n 3 2 '  
     s e t   t a g s + = ~ / v i m f i l e s / s y s t a g s  
     s e t   b a c k u p d i r = ~ / v i m f i l e s / b a c k u p  
 e n d i f  
  
 "   S w i t c h   s y n t a x   h i g h l i g h t i n g   o n ,   w h e n   t h e   t e r m i n a l   h a s   c o l o r s  
 "   A l s o   s w i t c h   o n   h i g h l i g h t i n g   t h e   l a s t   u s e d   s e a r c h   p a t t e r n .  
 i f   & t _ C o   >   2   | |   h a s ( " g u i _ r u n n i n g " )  
 	 s y n t a x   o n  
 	 s e t   b a c k g r o u n d = d a r k  
 	 s e t   h l s e a r c h  
     c o l o r s c h e m e   w o m b a t 2 5 6  
 e n d i f  
 i f   ! h a s ( " g u i _ r u n n i n g " )  
     c o l o r s c h e m e   w o m b a t  
 e n d i f  
 s e t   t _ C o = 2 5 6  
  
 i f   h a s ( " g u i _ r u n n i n g " )  
     "   T u r n   o f f   u s e l e s s   t o o l b a r  
     s e t   g u i o p t i o n s - = T  
     "   T u r n   o f f   m e n u   b a r    
     s e t   g u i o p t i o n s - = m  
     "   T u r n   o f f   r i g h t - h a n d   s c r o l l - b a r    
     s e t   g u i o p t i o n s - = r  
     "   T u r n   o f f   l e f t - h a n d   s c r o l l - b a r    
     s e t   g u i o p t i o n s - = l  
     "   T u r n   o f f   b o t t o m   s c r o l l - b a r    
     s e t   g u i o p t i o n s - = b  
     "   T u r n   o f f   b o t t o m   s c r o l l - b a r    
     s e t   g u i o p t i o n s - = L  
 e n d i f  
  
 "   O n l y   d o   t h i s   p a r t   w h e n   c o m p i l e d   w i t h   s u p p o r t   f o r   a u t o c o m m a n d s .  
 i f   h a s ( " a u t o c m d " )  
  
 	 "   E n a b l e   f i l e   t y p e   d e t e c t i o n .  
 	 "   U s e   t h e   d e f a u l t   f i l e t y p e   s e t t i n g s ,   s o   t h a t   m a i l   g e t s   ' t w '   s e t   t o   7 2 ,  
  
 	 "   N e e d e d   f o r   o m n i c p p c o m p l e t e  
 	 s e t   n o c p  
  
 	 "   P u t   t h e s e   i n   a n   a u t o c m d   g r o u p ,   s o   t h a t   w e   c a n   d e l e t e   t h e m   e a s i l y .  
 	 a u g r o u p   v i m r c E x  
 	 	 a u !  
 	 	 "   F o r   a l l   t e x t   f i l e s   s e t   ' t e x t w i d t h '   t o   7 8   c h a r a c t e r s .  
 	 	 a u t o c m d   F i l e T y p e   t e x t   s e t l o c a l   t e x t w i d t h = 7 8  
 	 	 a u t o c m d   F i l e T y p e   t e x   s e t l o c a l   t e x t w i d t h = 7 8  
 	 	 a u t o c m d   F i l e T y p e   t e x   n m a p   < C - O >   : ! o p e n   % : r . p d f   < C R >  
 	 	 a u t o c m d   F i l e T y p e   c   n m a p   < C - M >   : ! g c c   - o   % : r   - a n s i   - W a l l   - W e x t r a   - p e d a n t i c   - w   - W e r r o r   - g   - O 3   %   < C R >  
 	 	 a u t o c m d   F i l e T y p e   j a v a   s e t   m a k e p r g = a n t \   - e m a c s    
 	 	 a u t o c m d   F i l e T y p e   j a v a   s e t   e f m = % f : % l : % v : % * \ \ d : % * \ \ d : % * \ \ s % m , % f : % l : % m , % A % * \ \ d . \   % t % . % # \   i n \   % f , % C \   ( a t \   l i n e \   % l ) , % - C \   % . % # , % Z % m    
 	 	 : n m a p   < C - S - N >   : s e t l o c a l   s p e l l   s p e l l l a n g = n l   < C R >  
 	 	 : n m a p   < C - S - E >   : s e t l o c a l   s p e l l   s p e l l l a n g = e n   < C R >  
 	 	 : n m a p   < C - S - F >   : s e t l o c a l   s p e l l   s p e l l l a n g = f r   < C R >  
 	 	 : n m a p   < C - S - S >   : s e t l o c a l   n o s p e l l   < C R >  
  
         i f   o s   = =   ' M a c '  
             l e t   g : T e x _ C o m p i l e R u l e _ p d f = " l a t e x m k   - p d f   $ *   & &   / u s r / b i n / o p e n   % : r . p d f "  
             l e t   g : T e x _ D e f a u l t T a r g e t V a l u e = " p d f "  
             l e t   g : T r e a t M a c V i e w e r A s U N I X = 1  
             l e t   g : T e x _ V i e w R u l e _ p d f = " o p e n "  
             l e t   g : t e x _ f l a v o r = " t e x "  
             l e t   g : T e x _ G o t o E r r o r = 0  
             s e t   g r e p p r g = g r e p \   - n H \   $ *  
             l e t   v i m r p l u g i n _ t e r m   =   " / A p p l i c a t i o n s / U t i l i t i e s / T e r m i n a l . a p p / C o n t e n t s / M a c O S / T e r m i n a l " 	  
             l e t   v i m r p l u g i n _ t e r m   =   " / A p p l i c a t i o n s / U t i l i t i e s / T e r m i n a l . a p p / C o n t e n t s / M a c O S / T e r m i n a l "  
         e n d i f  
 	 	 l e t   r r s t _ s y n _ h l _ c h u n k   =   1  
 	 	 l e t   r m d _ s y n _ h l _ c h u n k   =   1  
  
 	 	 "   W h e n   e d i t i n g   a   f i l e ,   a l w a y s   j u m p   t o   t h e   l a s t   k n o w n   c u r s o r   p o s i t i o n .  
 	 	 "   D o n ' t   d o   i t   w h e n   t h e   p o s i t i o n   i s   i n v a l i d   o r   w h e n   i n s i d e   a n   e v e n t   h a n d l e r  
 	 	 "   ( h a p p e n s   w h e n   d r o p p i n g   a   f i l e   o n   g v i m ) .  
 	 	 a u t o c m d   B u f R e a d P o s t   *  
 	 	 	 	 	 \   i f   l i n e ( " ' \ " " )   >   0   & &   l i n e ( " ' \ " " )   < =   l i n e ( " $ " )   |  
 	 	 	 	 	 \       e x e   " n o r m a l   g ` \ " "   |  
 	 	 	 	 	 \   e n d i f  
  
 	 	 "   B e c a u s e   m o s t   . m   f i l e s   I   o p e n   a r e   m a t l a b   a n d   n o t   o b j e c t i v e - c  
 	 	 " a u t o c m d   F i l e T y p e   o b j c   s e t   f i l e t y p e = m a t l a b  
  
 	 	 a u   B u f N e w F i l e , B u f R e a d   * . d o x y g e n   s e t f i l e t y p e   d o x y g e n    
  
 	 	 l e t   g : D o x y g e n T o o l k i t _ b r i e f T a g _ p r e = " "  
 	 	 l e t   g : D o x y g e n T o o l k i t _ p a r a m T a g _ p r e = " @ p a r a m   "  
 	 	 l e t   g : D o x y g e n T o o l k i t _ r e t u r n T a g = " @ r e t u r n s       "  
 	 	 l e t   g : D o x y g e n T o o l k i t _ b l o c k H e a d e r = " "  
 	 	 l e t   g : D o x y g e n T o o l k i t _ b l o c k F o o t e r = " "  
 	 	 l e t   g : D o x y g e n T o o l k i t _ a u t h o r N a m e = " A n t o n   B o s s e n b r o e k "  
 	 	 l e t   g : D o x y g e n T o o l k i t _ l i c e n s e T a g = " M y   o w n   l i c e n s e \ < e n t e r > "  
 	 	 l e t   g : D o x y g e n T o o l k i t _ c o m m e n t T y p e   =   " C + + "    
 	 a u g r o u p   E N D  
  
  
     h i g h l i g h t   E x t r a W h i t e s p a c e   c t e r m b g = r e d   g u i b g = r e d  
     m a t c h   E x t r a W h i t e s p a c e   / \ s \ + $ /  
     a u t o c m d   B u f W i n E n t e r   *   m a t c h   E x t r a W h i t e s p a c e   / \ s \ + $ /  
     a u t o c m d   I n s e r t E n t e r   *   m a t c h   E x t r a W h i t e s p a c e   / \ s \ + \ % # \ @ < ! $ /  
     a u t o c m d   I n s e r t L e a v e   *   m a t c h   E x t r a W h i t e s p a c e   / \ s \ + $ /  
     a u t o c m d   B u f W i n L e a v e   *   c a l l   c l e a r m a t c h e s ( )  
  
     "   R e m o v e   t r a i l i n g   w h i t e s p a c e  
     f u n c t i o n !   T r i m W h i t e S p a c e ( )  
         l e t   l   =   l i n e ( " . " )  
         l e t   c   =   l i n e ( " . " )  
         % s / \ s \ + $ / / e  
         c a l l   c u r s o r ( l ,   c )  
     e n d f u n c t i o n  
     a u t o c m d   B u f W r i t e P r e           * . R , * . R m d , D E S C R I P T I O N , N A M E S P A C E , * . R n w , * . t e x , * . s t y , * . c , * . h , * . c p p , * . h p p   : c a l l   T r i m W h i t e S p a c e ( )  
  
 	 n n o r e m a p   , l   m a y i w ` a : e x e   " ! d i c t   - d   m o b y - t h e s   -   $ ( e c h o   "   .   @ "   .   " \ |   r e c o d e   l a t i n 1 . . u t f - 8 ) " < C R >  
 	 n n o r e m a p   , n   m a y i w ` a : e x e   " ! d i c t   - d   n l d - e n g     $ ( e c h o   "   .   @ "   .   " \ |   r e c o d e   l a t i n 1 . . u t f - 8 ) " < C R >  
 	 " i m a p   < l e a d e r > t   m a y i w ` a : e x e   " ! d i c t   - d   m o b y - t h e s   -   $ ( e c h o   "   .   @ "   .   " \ |   r e c o d e   l a t i n 1 . . u t f - 8 ) " < C R >  
  
 e l s e  
 e n d i f   "   h a s ( " a u t o c m d " )  
  
 "   S e t t i n g s   f o r   i n d e n t - g u i d e s   { { {  
 i f   e x i s t s ( ' : I n d e n t G u i d e s T o g g l e ' )  
     : I n d e n t G u i d e s T o g g l e  
 e n d i f  
 "   } } }  
  
 "   S e t t i n g s   f o r   r a i n b o w   { { {  
 " i f   e x i s t s ( ' : R a i n b o w T o g g l e ' )  
 l e t   g : r a i n b o w _ a c t i v e   =   1  
 "   } } }  
 "   v i m : f o l d m e t h o d = m a r k e r : f o l d l e v e l = 0 :  
  
  
