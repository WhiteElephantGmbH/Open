with GNATCOM.Dispinterface;

package winword.Email_Interface is

   type Email_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out Email_Type);

   function Pointer (This : Email_Type)
     return Pointer_To_Email;

   procedure Attach (This    : in out Email_Type;
                     Pointer : in     Pointer_To_Email);

   function Get_Application
     (This : Email_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : Email_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : Email_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_CurrentEmailAuthor
     (This : Email_Type)
     return Pointer_To_EmailAuthor;

end winword.Email_Interface;

