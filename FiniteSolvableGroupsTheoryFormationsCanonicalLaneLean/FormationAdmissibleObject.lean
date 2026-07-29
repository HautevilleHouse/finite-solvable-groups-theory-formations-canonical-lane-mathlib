import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteSolvableGroupsTheoryFormationsCanonicalLaneLean

structure Formation where
  groupClass : Type u
  closedUnderSubgroups : Prop
  closedUnderHomomorphicImages : Prop
  closedUnderDirectProducts : Prop
  saturated : Prop

structure FormationAdmittedObject where
  carrier : Formation
  saturatedClosure : Prop
  conclusion : carrier.saturated

def FormationWitnessClosed (O : FormationAdmittedObject) : Prop :=
  O.carrier.saturated

end FiniteSolvableGroupsTheoryFormationsCanonicalLaneLean
end HautevilleHouse