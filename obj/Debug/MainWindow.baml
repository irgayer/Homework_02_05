   M S B A M L   `   `   `  ����N  JSecurityApplication, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:SecurityApplicationSecurityApplication  5   	   $    SecurityApplication.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   3local!clr-namespace:SecurityApplication     5   	   -   5          �Name$  
mainWindow��5   	    � Title$ Приложение��5   	   $	��450��6   $	��800��6)    � 
ResizeMode$ NoResize=�65   ���	#FFC1C1C1.��5	      �  � ColumnDefinitions 5
   
   �� 5      $
��200* �6   �� 5      $
��100* �6   �� 5      $
��200* �6    � RowDefinitions 5   
   �� 5      $
��100* �6   �� 5      $
��110* �6   �� 5      $
��100* �6   .+�5   
   ��  �� Orientation$ Vertical=�6   $��1��6,   $��1��6<   .+�5      �� $��Логин:��6    �� TextAlignment$ Center=�6&   6?   �� 5      -   5        $��loginTextBox��5      $��0 0 0 10q�6*   6>   �� 5      $��Пароль:��6   $ Center=�6'   6@   G� 5      -   5        $��passwordBox��5      $��0 0 0 20q�6-   6A   �� 5      -   5        $��signInButton��5      $��
Войти��6)   6U   �� 5      -   5        $��signUpButton��5      $��Регистрация��6)   6[   5      5      5      