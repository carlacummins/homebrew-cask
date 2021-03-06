#Template generated on 2018-11-15 19:04:39 +0000
#Do not edit this file. Modify the relevant config and regenerate

require 'digest'

class AssemblyCoordConversion < Formula
  url 'file://'+File.expand_path(__FILE__)
  desc 'Dependencies for the AssemblyCoordConversion formula'
  sha256 Digest::SHA256.file(File.expand_path(__FILE__)).hexdigest
  version '1'

  depends_on 'ensembl/ensembl/crossmap'

  def install
    File.open('assembly-coord-conversion', 'w') { |file|
      file.write '#!/bin/sh'+"\n"
      deps.each do | dep |
        f = dep.to_formula
        file.write "echo "+[f.full_name, f.version, f.prefix].join("\t")+"\n"
      end
    }
    bin.install 'assembly-coord-conversion'
  end
end
    