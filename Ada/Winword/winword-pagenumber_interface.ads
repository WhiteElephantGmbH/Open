with GNATCOM.Dispinterface;

package winword.PageNumber_Interface is

   type PageNumber_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out PageNumber_Type);

   function Pointer (This : PageNumber_Type)
     return Pointer_To_PageNumber;

   procedure Attach (This    : in out PageNumber_Type;
                     Pointer : in     Pointer_To_PageNumber);

   function Get_Application
     (This : PageNumber_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : PageNumber_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : PageNumber_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Index
     (This : PageNumber_Type)
     return Interfaces.C.long;

   function Get_Alignment
     (This : PageNumber_Type)
     return WdPageNumberAlignment;

   procedure Put_Alignment
     (This : PageNumber_Type;
      prop : WdPageNumberAlignment);

   procedure uSelect
     (This : PageNumber_Type);

   procedure Copy
     (This : PageNumber_Type);

   procedure Cut
     (This : PageNumber_Type);

   procedure Delete
     (This : PageNumber_Type);

end winword.PageNumber_Interface;

