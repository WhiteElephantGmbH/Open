with GNATCOM.Dispinterface;

package winword.HTMLProject_Interface is

   type HTMLProject_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out HTMLProject_Type);

   function Pointer (This : HTMLProject_Type)
     return Pointer_To_HTMLProject;

   procedure Attach (This    : in out HTMLProject_Type;
                     Pointer : in     Pointer_To_HTMLProject);

   function Get_Application
     (This    : HTMLProject_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Creator
     (This      : HTMLProject_Type)
     return Interfaces.C.long;

   function Get_State
     (This  : HTMLProject_Type)
     return MsoHTMLProjectState;

   procedure RefreshProject
     (This    : HTMLProject_Type;
      Refresh : GNATCOM.Types.VARIANT_BOOL);

   procedure RefreshDocument
     (This    : HTMLProject_Type;
      Refresh : GNATCOM.Types.VARIANT_BOOL);

   function Get_HTMLProjectItems
     (This             : HTMLProject_Type)
     return Pointer_To_HTMLProjectItems;

   function Get_Parent
     (This    : HTMLProject_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   procedure Open
     (This     : HTMLProject_Type;
      OpenKind : MsoHTMLProjectOpen);

end winword.HTMLProject_Interface;

