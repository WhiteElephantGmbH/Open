with GNATCOM.Dispinterface;

package winword.Field_Interface is

   type Field_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out Field_Type);

   function Pointer (This : Field_Type)
     return Pointer_To_Field;

   procedure Attach (This    : in out Field_Type;
                     Pointer : in     Pointer_To_Field);

   function Get_Application
     (This : Field_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : Field_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : Field_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Code
     (This : Field_Type)
     return Pointer_To_uRange;

   procedure Put_Code
     (This : Field_Type;
      prop : Pointer_To_uRange);

   function Get_Type
     (This : Field_Type)
     return WdFieldType;

   function Get_Locked
     (This : Field_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_Locked
     (This : Field_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_Kind
     (This : Field_Type)
     return WdFieldKind;

   function Get_Result
     (This : Field_Type)
     return Pointer_To_uRange;

   procedure Put_Result
     (This : Field_Type;
      prop : Pointer_To_uRange);

   function Get_Data
     (This : Field_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_Data
     (This : Field_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_Next
     (This : Field_Type)
     return Pointer_To_Field;

   function Get_Previous
     (This : Field_Type)
     return Pointer_To_Field;

   function Get_Index
     (This : Field_Type)
     return Interfaces.C.long;

   function Get_ShowCodes
     (This : Field_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_ShowCodes
     (This : Field_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_LinkFormat
     (This : Field_Type)
     return Pointer_To_LinkFormat;

   function Get_OLEFormat
     (This : Field_Type)
     return Pointer_To_OLEFormat;

   function Get_InlineShape
     (This : Field_Type)
     return Pointer_To_InlineShape;

   procedure uSelect
     (This : Field_Type);

   function Update
     (This : Field_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Unlink
     (This : Field_Type);

   procedure UpdateSource
     (This : Field_Type);

   procedure DoClick
     (This : Field_Type);

   procedure Copy
     (This : Field_Type);

   procedure Cut
     (This : Field_Type);

   procedure Delete
     (This : Field_Type);

end winword.Field_Interface;

