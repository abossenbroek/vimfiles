 "   l s t l i s t i n g . v i m :   s u p p o r t   f o r   t h e   l s t l i s t i n g   p a c k a g e  
 "       A u t h o r   :   C h a r l e s   E .   C a m p b e l l  
 "       D a t e       :   N o v   2 5 ,   2 0 1 3  
 "       V e r s i o n :   1 b 	 A S T R O - O N L Y  
 "   N O T E :   P l a c e   t h i s   f i l e   i n   y o u r   $ H O M E / . v i m / a f t e r / s y n t a x / t e x /   d i r e c t o r y   ( m a k e   i t   i f   i t   d o e s n ' t   e x i s t )  
 l e t   b : l o a d e d _ l s t l i s t i n g     =   " v 1 b "  
 s y n   r e g i o n   t e x Z o n e 	 s t a r t = " \ \ b e g i n { l s t l i s t i n g } "   e n d = " \ \ e n d { l s t l i s t i n g } \ | % s t o p z o n e \ > "  
 s y n   r e g i o n   t e x Z o n e 	 s t a r t = " \ \ l s t i n p u t l i s t i n g "   e n d = " { \ s * [ a - z A - Z / . 0 - 9 _ ^ ] \ + \ s * } "  
