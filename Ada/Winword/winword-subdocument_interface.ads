with GNATCOM.Dispinterface;

package winword.Subdocument_Interface is

   type Subdocument_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out Subdocument_Type);

   function Pointer (This : Subdocument_Type)
     return Pointer_To_Subdocument;

   procedure Attach (This    : in out Subdocument_Type;
                     Pointer : in     Pointer_To_Subdocument);

   function Get_Application
     (This : Subdocument_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : Subdocument_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : Subdocument_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Locked
     (This : Subdocument_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_Locked
     (This : Subdocument_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_Range
     (This : Subdocument_Type)
     return Pointer_To_uRange;

   function Get_Name
     (This : Subdocument_Type)
     return GNATCOM.Types.BSTR;

   function Get_Path
     (This : Subdocument_Type)
     return GNATCOM.Types.BSTR;

   function Get_HasFile
     (This : Subdocument_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   function Get_Level
     (This : Subdocument_Type)
     return Interfaces.C.long;

   procedure Delete
     (This : Subdocument_Type);

   procedure Split
     (This   : Subdocument_Type;
      uRange : Pointer_To_uRange);

   function Open
     (This : Subdocument_Type)
     return Pointer_To_uDocument;

end winword.Subdocument_Interface;

