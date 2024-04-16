{
  python3Packages,
}:
with python3Packages;
  buildPythonApplication {
    pname = "BitwardenDecrypt";
    version = "1.6";
    propagatedBuildInputs = [
      cryptography       
    ];
    src = ./.;
    postInstall = "mv $out/bin/BitwardenDecrypt.py $out/bin/BitwardenDecrypt";
  }
