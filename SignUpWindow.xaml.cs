using SecurityApplication.DataAccess;
using SecurityApplication.Models;
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
using System.Windows.Shapes;

namespace SecurityApplication
{
    /// <summary>
    /// Логика взаимодействия для SignUpWindow.xaml
    /// </summary>
    public partial class SignUpWindow : Window
    {
        public SignUpWindow()
        {
            InitializeComponent();
        }

        private void signUpButtonClick(object sender, RoutedEventArgs e)
        {
            var login = loginTextBox.Text;
            var password = passwordBox.Password;
            var repeatedPassword = repeatPasswordBox.Password;

            if (string.IsNullOrWhiteSpace(login) || string.IsNullOrWhiteSpace(password) || string.IsNullOrWhiteSpace(repeatedPassword))
            {
                MessageBox.Show("Заполните все поля!");
                return;
            }
            if (!repeatedPassword.Equals(password))
            {
                MessageBox.Show("Пароли неодинаковые!");
                return;
            }
            using(var context = new SecurityContext())
            {
                context.Users.Add(new User
                {
                    Login = login,
                    Password = SecurityHasher.HashPassword(password)
                });
                MessageBox.Show("Регистрация прошла успешно!");
            }

        }
    }
}
