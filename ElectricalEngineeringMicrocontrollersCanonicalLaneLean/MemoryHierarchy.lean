import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringMicrocontrollersCanonicalLaneLean

structure MemoryHierarchyPackage where
  cacheCoherence : Prop
  memoryMapping : Prop
  dmaSupport : Prop
  virtualMemory : Prop

structure MemoryHierarchyEvidence (M : MemoryHierarchyPackage) where
  cacheCoherenceClosed : M.cacheCoherence
  memoryMappingClosed : M.memoryMapping
  dmaSupportClosed : M.dmaSupport
  virtualMemoryClosed : M.virtualMemory

def MemoryHierarchyClosed (M : MemoryHierarchyPackage) : Prop :=
  M.cacheCoherence ∧ M.memoryMapping ∧ M.dmaSupport ∧ M.virtualMemory

theorem memory_hierarchy_closed_from_evidence (M : MemoryHierarchyPackage)
    (E : MemoryHierarchyEvidence M) : MemoryHierarchyClosed M :=
  And.intro E.cacheCoherenceClosed (And.intro E.memoryMappingClosed
    (And.intro E.dmaSupportClosed E.virtualMemoryClosed))

end ElectricalEngineeringMicrocontrollersCanonicalLaneLean
end HautevilleHouse