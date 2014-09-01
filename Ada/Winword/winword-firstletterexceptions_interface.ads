with GNATCOM.Dispinterface;

package winword.FirstLetterExceptions_Interface is

   type FirstLetterExceptions_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out FirstLetterExceptions_Type);

   function Pointer (This : FirstLetterExceptions_Type)
     return Pointer_To_FirstLetterExceptions;

   procedure Attach (This    : in out FirstLetterExceptions_Type;
                     Pointer : in     Pointer_To_FirstLetterExceptions);

   function Get_Application
     (This : FirstLetterExceptions_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : FirstLetterExceptions_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : FirstLetterExceptions_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Getu_NewEnum
     (This : FirstLetterExceptions_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function Get_Count
     (This : FirstLetterExceptions_Type)
     return Interfaces.C.long;

   function Item
     (This  : FirstLetterExceptions_Type;
      Index : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_FirstLetterException;

   function Add
     (This : FirstLetterExceptions_Type;
      Name : GNATCOM.Types.BSTR;
      Free : Boolean := True)
     return Pointer_To_FirstLetterException;

end winword.FirstLetterExceptions_Interface;

