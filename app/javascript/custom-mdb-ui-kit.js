import mdb form "mdb-ui-kit"

const mdbInputUpdate = () => {
  document.querySelectorAll('.from-outline').forEach((formOutline) => {
    new.mdb.Input(fromOutline).init();
  });
}

document.addEventListener('turbo:render', () => {
  mdbInputUpdate();
});