def romancomp(*args)
  args.map { |x| x.tr 'IVXLCDM', 'CDILMVX' }.reduce :<
end


p romancomp('CX', 'MX')
