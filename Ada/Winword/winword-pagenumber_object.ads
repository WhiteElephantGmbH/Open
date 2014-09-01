with GNATCOM.Dispinterface;

package winword.PageNumber_Object is

   type PageNumber_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : PageNumber_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : PageNumber_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : PageNumber_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Index
     (This : PageNumber_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Alignment
     (This : PageNumber_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Alignment
     (This : PageNumber_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   procedure uSelect
     (This : PageNumber_Type);

   procedure Copy
     (This : PageNumber_Type);

   procedure Cut
     (This : PageNumber_Type);

   procedure Delete
     (This : PageNumber_Type);

end winword.PageNumber_Object;

