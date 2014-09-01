with GNATCOM.Dispinterface;

package winword.Browser_Interface is

   type Browser_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out Browser_Type);

   function Pointer (This : Browser_Type)
     return Pointer_To_Browser;

   procedure Attach (This    : in out Browser_Type;
                     Pointer : in     Pointer_To_Browser);

   function Get_Application
     (This : Browser_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : Browser_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : Browser_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Target
     (This : Browser_Type)
     return WdBrowseTarget;

   procedure Put_Target
     (This : Browser_Type;
      prop : WdBrowseTarget);

   procedure Next
     (This : Browser_Type);

   procedure Previous
     (This : Browser_Type);

end winword.Browser_Interface;

