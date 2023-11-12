for file in (status dirname)/**
    if test -f $file
        dos2unix -q $file
    end
end

echo "All line endings has been converted to the format of Unix."
