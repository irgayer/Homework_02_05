using SecurityApplication.DataAccess;
using SecurityApplication.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace SecurityApplication
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void signInButtonClick(object sender, RoutedEventArgs e)
        {
            var login = loginTextBox.Text;
            var password = passwordBox.Password;
            if(string.IsNullOrWhiteSpace(login) || string.IsNullOrWhiteSpace(password))
            {
                MessageBox.Show("Заполните все поля!");
                return;
            }
            using (var context = new SecurityContext())
            {
                var user = context.Users.SingleOrDefault(searchingUser => searchingUser.Login == login);
                if(user == null || !SecurityHasher.VerifyPassword(password, user.Password))
                {
                    MessageBox.Show("Неверный логин или пароль");
                }
                else
                {
                    MessageBox.Show("Добро пожаловать!");
                }
            }
        }

        private void signUpButtonClick(object sender, RoutedEventArgs e)
        {
            SignUpWindow sign UpWindow = new SignUpWindow();
            signUpWindow.Show();
        }
    }
}
