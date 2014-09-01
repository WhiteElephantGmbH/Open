with GNATCOM.Dispinterface;

package winword.Reviewers_Interface is

   type Reviewers_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out Reviewers_Type);

   function Pointer (This : Reviewers_Type)
     return Pointer_To_Reviewers;

   procedure Attach (This    : in out Reviewers_Type;
                     Pointer : in     Pointer_To_Reviewers);

   function Getu_NewEnum
     (This : Reviewers_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function Get_Application
     (This : Reviewers_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : Reviewers_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : Reviewers_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Count
     (This : Reviewers_Type)
     return Interfaces.C.long;

   function Item
     (This  : Reviewers_Type;
      Index : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_Reviewer;

end winword.Reviewers_Interface;

