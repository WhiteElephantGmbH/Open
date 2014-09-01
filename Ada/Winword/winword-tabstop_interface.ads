with GNATCOM.Dispinterface;

package winword.TabStop_Interface is

   type TabStop_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out TabStop_Type);

   function Pointer (This : TabStop_Type)
     return Pointer_To_TabStop;

   procedure Attach (This    : in out TabStop_Type;
                     Pointer : in     Pointer_To_TabStop);

   function Get_Application
     (This : TabStop_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : TabStop_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : TabStop_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Alignment
     (This : TabStop_Type)
     return WdTabAlignment;

   procedure Put_Alignment
     (This : TabStop_Type;
      prop : WdTabAlignment);

   function Get_Leader
     (This : TabStop_Type)
     return WdTabLeader;

   procedure Put_Leader
     (This : TabStop_Type;
      prop : WdTabLeader);

   function Get_Position
     (This : TabStop_Type)
     return Interfaces.C.C_float;

   procedure Put_Position
     (This : TabStop_Type;
      prop : Interfaces.C.C_float);

   function Get_CustomTab
     (This : TabStop_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   function Get_Next
     (This : TabStop_Type)
     return Pointer_To_TabStop;

   function Get_Previous
     (This : TabStop_Type)
     return Pointer_To_TabStop;

   procedure Clear
     (This : TabStop_Type);

end winword.TabStop_Interface;

