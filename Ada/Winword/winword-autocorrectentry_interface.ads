with GNATCOM.Dispinterface;

package winword.AutoCorrectEntry_Interface is

   type AutoCorrectEntry_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out AutoCorrectEntry_Type);

   function Pointer (This : AutoCorrectEntry_Type)
     return Pointer_To_AutoCorrectEntry;

   procedure Attach (This    : in out AutoCorrectEntry_Type;
                     Pointer : in     Pointer_To_AutoCorrectEntry);

   function Get_Application
     (This : AutoCorrectEntry_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : AutoCorrectEntry_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : AutoCorrectEntry_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Index
     (This : AutoCorrectEntry_Type)
     return Interfaces.C.long;

   function Get_Name
     (This : AutoCorrectEntry_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_Name
     (This : AutoCorrectEntry_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_Value
     (This : AutoCorrectEntry_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_Value
     (This : AutoCorrectEntry_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_RichText
     (This : AutoCorrectEntry_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Delete
     (This : AutoCorrectEntry_Type);

   procedure Apply
     (This   : AutoCorrectEntry_Type;
      uRange : Pointer_To_uRange);

end winword.AutoCorrectEntry_Interface;

