with GNATCOM.Dispinterface;

package winword.CaptionLabels_Interface is

   type CaptionLabels_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out CaptionLabels_Type);

   function Pointer (This : CaptionLabels_Type)
     return Pointer_To_CaptionLabels;

   procedure Attach (This    : in out CaptionLabels_Type;
                     Pointer : in     Pointer_To_CaptionLabels);

   function Get_Application
     (This : CaptionLabels_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : CaptionLabels_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : CaptionLabels_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Getu_NewEnum
     (This : CaptionLabels_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function Get_Count
     (This : CaptionLabels_Type)
     return Interfaces.C.long;

   function Item
     (This  : CaptionLabels_Type;
      Index : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_CaptionLabel;

   function Add
     (This : CaptionLabels_Type;
      Name : GNATCOM.Types.BSTR;
      Free : Boolean := True)
     return Pointer_To_CaptionLabel;

end winword.CaptionLabels_Interface;

