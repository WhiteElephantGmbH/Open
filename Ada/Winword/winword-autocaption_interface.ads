with GNATCOM.Dispinterface;

package winword.AutoCaption_Interface is

   type AutoCaption_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out AutoCaption_Type);

   function Pointer (This : AutoCaption_Type)
     return Pointer_To_AutoCaption;

   procedure Attach (This    : in out AutoCaption_Type;
                     Pointer : in     Pointer_To_AutoCaption);

   function Get_Application
     (This : AutoCaption_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : AutoCaption_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : AutoCaption_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Name
     (This : AutoCaption_Type)
     return GNATCOM.Types.BSTR;

   function Get_AutoInsert
     (This : AutoCaption_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_AutoInsert
     (This : AutoCaption_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_Index
     (This : AutoCaption_Type)
     return Interfaces.C.long;

   function Get_CaptionLabel
     (This : AutoCaption_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_CaptionLabel
     (This : AutoCaption_Type;
      prop : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

end winword.AutoCaption_Interface;

