with GNATCOM.Dispinterface;

package winword.EmailAuthor_Interface is

   type EmailAuthor_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out EmailAuthor_Type);

   function Pointer (This : EmailAuthor_Type)
     return Pointer_To_EmailAuthor;

   procedure Attach (This    : in out EmailAuthor_Type;
                     Pointer : in     Pointer_To_EmailAuthor);

   function Get_Application
     (This : EmailAuthor_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : EmailAuthor_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : EmailAuthor_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Style
     (This : EmailAuthor_Type)
     return Pointer_To_Style;

end winword.EmailAuthor_Interface;

