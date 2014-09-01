with GNATCOM.Dispinterface;

package winword.ListEntry_Object is

   type ListEntry_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : ListEntry_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : ListEntry_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : ListEntry_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Index
     (This : ListEntry_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Name
     (This : ListEntry_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Name
     (This : ListEntry_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   procedure Delete
     (This : ListEntry_Type);

end winword.ListEntry_Object;

