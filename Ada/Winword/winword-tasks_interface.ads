with GNATCOM.Dispinterface;

package winword.Tasks_Interface is

   type Tasks_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out Tasks_Type);

   function Pointer (This : Tasks_Type)
     return Pointer_To_Tasks;

   procedure Attach (This    : in out Tasks_Type;
                     Pointer : in     Pointer_To_Tasks);

   function Get_Application
     (This : Tasks_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : Tasks_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : Tasks_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Getu_NewEnum
     (This : Tasks_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function Get_Count
     (This : Tasks_Type)
     return Interfaces.C.long;

   function Item
     (This  : Tasks_Type;
      Index : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_uTask;

   function Exists
     (This : Tasks_Type;
      Name : GNATCOM.Types.BSTR;
      Free : Boolean := True)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure ExitWindows
     (This : Tasks_Type);

end winword.Tasks_Interface;

