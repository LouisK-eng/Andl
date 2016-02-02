echo Setting up Thrift databases

for /d %%f in (*.sandl) do rd %%f /s
for /d %%f in (gen-*) do rd %%f /s
del *.thrift

..\bin\andl ThriftTest.andl test -t
..\bin\andl ThriftSupplierPart.andl sp -t

..\bin\thrift-0.9.2.exe --gen csharp ThriftTest.thrift
..\bin\thrift-0.9.2.exe --gen csharp ThriftSupplierPart.thrift 
