const { syncDB } = require("../../tasks/sync-db");

describe("Prueba de syuncs db", () => {
  test("debe de ejecutar el proceso 2 veces", () => {
    syncDB()
    const times = syncDB();


    times
    console.log("se llamo", times);

    expect(times).toBe(2)
  });
});
