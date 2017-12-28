describe('reverseString', () => {
  // your tests, here
  it("will reverse any word", () => {
    expect(reverseString("dog")).toEqual("god");
  });
  it("will reverse any combination of letters", () => {
    expect(reverseString("wxyz")).toEqual("zyxw");
  });
  it("will accept blank spaces", () => {
    expect(reverseString(" ")).toEqual(" ");
  });
  it("will accept numbers in a string", () => {
    expect(reverseString("02919")).toEqual("91920");
  });
});
