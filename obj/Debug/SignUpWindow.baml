   M S B A M L   `   `   `  ����N  JSecurityApplication, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:SecurityApplicationSecurityApplication  5   	   &     SecurityApplication.SignUpWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   3local!clr-namespace:SecurityApplication     5   	     � Title$  SignUpWindow��5   	   $	��400��6   $	��500��6+    � 
ResizeMode$ NoResize=�67   ���	#FFC1C1C1.��5	      �  � ColumnDefinitions 5
   
   �� 5      $
��100* �6   6.   �� 5      $
��100* �6   6.   �� 5      $
��100* �6   6.    � RowDefinitions 5   
   �� 5      $
��100* �6   �� 5      $
��200* �6   �� 5      $
��100* �6   .+�5   
   ��  �� Orientation$ Vertical=�6   $��1��6,   $��1��69   .+�5      �� $��Логин:��6   6(   �� 5      -   5        $��loginTextBox��5      $��0 0 0 10q�6*   6>   �� 5      $��Пароль:��6   6)   G� 5      -   5        $��passwordBox��5      $��0 0 0 10q�6-   6A   �� 5      $&�� Повторите пароль:��6   63   G� 5      -   5        $��repeatPasswordBox��5      $��0 0 0 20q�63   6G   �� 5      -   5        $��signUpButton��5      $*��$Зарегистрироваться��6)   6b   5      5      5      