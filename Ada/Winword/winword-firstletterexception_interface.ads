with GNATCOM.Dispinterface;

package winword.FirstLetterException_Interface is

   type FirstLetterException_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out FirstLetterException_Type);

   function Pointer (This : FirstLetterException_Type)
     return Pointer_To_FirstLetterException;

   procedure Attach (This    : in out FirstLetterException_Type;
                     Pointer : in     Pointer_To_FirstLetterException);

   function Get_Application
     (This : FirstLetterException_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : FirstLetterException_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : FirstLetterException_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Index
     (This : FirstLetterException_Type)
     return Interfaces.C.long;

   function Get_Name
     (This : FirstLetterException_Type)
     return GNATCOM.Types.BSTR;

   procedure Delete
     (This : FirstLetterException_Type);

end winword.FirstLetterException_Interface;

