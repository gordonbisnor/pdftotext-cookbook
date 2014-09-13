script "pdf2json" do
  interpreter "bash"
  user "root"
  cwd "/tmp"
  code <<-EOH
  wget ftp://ftp.foolabs.com/pub/xpdf/xpdfbin-linux-3.04.tar.gz
  tar -zxf xpdfbin-linux-3.04
  cd xpdfbin-linux-3.04
  ./configure
  make
  make install
  EOH
end

