import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteSolvableGroupsTheoryFormationsCanonicalLaneLean

structure FormationAdmittedObject where
  group : Type u
  groupStructure : Group group
  finite : Prop
  solvable : Prop
  formationClass : Set (Group group)
  containsGroup : group ∈ formationClass
  closureUnderSubgroups : ∀ (H : Subgroup group), H ∈ formationClass
  closureUnderQuotients : ∀ (N : Subgroup group)[N.Normal], group ⧸ N ∈ formationClass
  closureUnderExtensions : ∀ (K : Group group) (N : Subgroup group)[N.Normal],
    N ∈ formationClass → (group ⧸ N) ∈ formationClass → group ∈ formationClass

def FormationWitnessClosed (O : FormationAdmittedObject) : Prop :=
  O.containsGroup

end FiniteSolvableGroupsTheoryFormationsCanonicalLaneLean
end HautevilleHouse