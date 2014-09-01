with GNATCOM.Dispinterface;

package winword.Field_Object is

   type Field_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : Field_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : Field_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : Field_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Code
     (This : Field_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Code
     (This : Field_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Type
     (This : Field_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Locked
     (This : Field_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Locked
     (This : Field_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Kind
     (This : Field_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Result
     (This : Field_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Result
     (This : Field_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Data
     (This : Field_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Data
     (This : Field_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Next
     (This : Field_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Previous
     (This : Field_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Index
     (This : Field_Type)
     return GNATCOM.Types.VARIANT;

   function Get_ShowCodes
     (This : Field_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ShowCodes
     (This : Field_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_LinkFormat
     (This : Field_Type)
     return GNATCOM.Types.VARIANT;

   function Get_OLEFormat
     (This : Field_Type)
     return GNATCOM.Types.VARIANT;

   function Get_InlineShape
     (This : Field_Type)
     return GNATCOM.Types.VARIANT;

   procedure uSelect
     (This : Field_Type);

   function Update
     (This : Field_Type)
     return GNATCOM.Types.VARIANT;

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

end winword.Field_Object;

