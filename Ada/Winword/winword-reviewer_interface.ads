with GNATCOM.Dispinterface;

package winword.Reviewer_Interface is

   type Reviewer_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out Reviewer_Type);

   function Pointer (This : Reviewer_Type)
     return Pointer_To_Reviewer;

   procedure Attach (This    : in out Reviewer_Type;
                     Pointer : in     Pointer_To_Reviewer);

   function Get_Application
     (This : Reviewer_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : Reviewer_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : Reviewer_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Visible
     (This : Reviewer_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_Visible
     (This : Reviewer_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

end winword.Reviewer_Interface;

