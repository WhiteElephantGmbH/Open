with GNATCOM.Dispinterface;

package winword.Tasks_Object is

   type Tasks_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : Tasks_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : Tasks_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : Tasks_Type)
     return GNATCOM.Types.VARIANT;

   function Getu_NewEnum
     (This : Tasks_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : Tasks_Type)
     return GNATCOM.Types.VARIANT;

   function Item
     (This  : Tasks_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Exists
     (This : Tasks_Type;
      Name : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
     return GNATCOM.Types.VARIANT;

   procedure ExitWindows
     (This : Tasks_Type);

end winword.Tasks_Object;

