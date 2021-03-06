﻿using System.Security.Cryptography;
using System.Text;

namespace LicitProd.Entities
{
    public  class Verificable : Entity
    {
        private string _hash;

        public string Hash
        {
            get => GenerateHash();
            set => _hash = value;
        }

        public virtual string GenerateHash()
        {
            return string.Empty;

        }
        public bool IsValid => _hash == Hash;

        public string HashValue(string toHash) =>
            HashString((toHash));

        public Verificable()
        {
        }
        private string HashString(string toHash)
        {
            using (MD5 md5 = MD5.Create())
            {
                byte[] inputBytes = Encoding.ASCII.GetBytes(toHash);
                byte[] hashBytes = md5.ComputeHash(inputBytes);

                StringBuilder sb = new StringBuilder();
                for (int i = 0; i < hashBytes.Length; i++)
                {
                    sb.Append(hashBytes[i].ToString("X2"));
                }
                return sb.ToString();
            }
        }
    }
    
}
