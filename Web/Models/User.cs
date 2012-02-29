using System;
using System.Web.Script.Serialization;


namespace ConstellationDesktop.Web.Models
{
	
	public class User
	{
		protected int id;
		protected string name;
		protected string pass;

		public int Id {
			get {
				return this.id;
			}
			set {
				id = value;
			}
		}

		public string Pass {
			get {
				return this.pass;
			}
			set {
				pass = value;
			}
		}

		public string Name {
			get {
				return this.name;
			}
			set {
				name = value;
			}
		}		
		public User()
		{
		}
	}
}

