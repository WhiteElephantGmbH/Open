with GNATCOM.Dispinterface;

package winword.OtherCorrectionsException_Interface is

   type OtherCorrectionsException_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out OtherCorrectionsException_Type);

   function Pointer (This : OtherCorrectionsException_Type)
     return Pointer_To_OtherCorrectionsException;

   procedure Attach (This    : in out OtherCorrectionsException_Type;
                     Pointer : in     Pointer_To_OtherCorrectionsException);

   function Get_Application
     (This : OtherCorrectionsException_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : OtherCorrectionsException_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : OtherCorrectionsException_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Index
     (This : OtherCorrectionsException_Type)
     return Interfaces.C.long;

   function Get_Name
     (This : OtherCorrectionsException_Type)
     return GNATCOM.Types.BSTR;

   procedure Delete
     (This : OtherCorrectionsException_Type);

end winword.OtherCorrectionsException_Interface;

