with GNATCOM.Dispinterface;

package winword.HangulAndAlphabetException_Interface is

   type HangulAndAlphabetException_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out HangulAndAlphabetException_Type);

   function Pointer (This : HangulAndAlphabetException_Type)
     return Pointer_To_HangulAndAlphabetException;

   procedure Attach (This    : in out HangulAndAlphabetException_Type;
                     Pointer : in     Pointer_To_HangulAndAlphabetException);

   function Get_Application
     (This : HangulAndAlphabetException_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : HangulAndAlphabetException_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : HangulAndAlphabetException_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Index
     (This : HangulAndAlphabetException_Type)
     return Interfaces.C.long;

   function Get_Name
     (This : HangulAndAlphabetException_Type)
     return GNATCOM.Types.BSTR;

   procedure Delete
     (This : HangulAndAlphabetException_Type);

end winword.HangulAndAlphabetException_Interface;

