with GNATCOM.Dispinterface;

package winword.HangulAndAlphabetExceptions_Interface is

   type HangulAndAlphabetExceptions_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out HangulAndAlphabetExceptions_Type);

   function Pointer (This : HangulAndAlphabetExceptions_Type)
     return Pointer_To_HangulAndAlphabetExceptions;

   procedure Attach (This    : in out HangulAndAlphabetExceptions_Type;
                     Pointer : in     Pointer_To_HangulAndAlphabetExceptions);

   function Get_Application
     (This : HangulAndAlphabetExceptions_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : HangulAndAlphabetExceptions_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : HangulAndAlphabetExceptions_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Getu_NewEnum
     (This : HangulAndAlphabetExceptions_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function Get_Count
     (This : HangulAndAlphabetExceptions_Type)
     return Interfaces.C.long;

   function Item
     (This  : HangulAndAlphabetExceptions_Type;
      Index : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_HangulAndAlphabetException;

   function Add
     (This : HangulAndAlphabetExceptions_Type;
      Name : GNATCOM.Types.BSTR;
      Free : Boolean := True)
     return Pointer_To_HangulAndAlphabetException;

end winword.HangulAndAlphabetExceptions_Interface;

