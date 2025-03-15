echo "Task 4: Linux System Manager Script"

while true; do
  echo "========== Linux System Manager ==========="
  echo "1. Show System Information"
  echo "2. Check File Permissions"
  echo "3. Change File Permissions"
  echo "4. Compress a File/Directory"
  echo "5. Decompress a File"
  echo "6. Exit"
  echo "=========================================="
  echo "Enter your choice:"
  read choice

  case "$choice" in
    1)
      echo "Current User: $(whoami)"
      ;;
    2)
      echo "Enter the filename:"
      read filename
      if [ -e "$filename" ]; then
        echo "Permissions for $filename: $(ls -l "$filename" | awk '{print $1}')"
      else
        echo "File not found."
      fi
      ;;
    3)
      echo "Enter the filename:"
      read filename
      if [ -e "$filename" ]; then
        echo "Enter new permission :"
        read permission
        chmod "$permission" "$filename"
        echo "Permissions changed successfully."
      else
        echo "File not found."
      fi
      ;;
    4)
      echo "Enter the file/directory name:"
      read file_dir
      if [ -e "$file_dir" ]; then
        echo "Choose compression type:"
        echo "1. tar.gz"
        echo "2. zip"
        echo "Enter choice:"
        read compression_choice
        case "$compression_choice" in
          1)
            tar -czvf "$file_dir.tar.gz" "$file_dir"
            echo "Compression successful: $file_dir.tar.gz created."
            ;;
          2)
            zip -r "$file_dir.zip" "$file_dir"
            echo "Compression successful: $file_dir.zip created."
            ;;
          *)
            echo "Invalid choice."
            ;;
        esac
      else
        echo "File/directory not found."
      fi
      ;;
    5)
      echo "Enter the compressed file name:"
      read compressed_file
      if [ -e "$compressed_file" ]; then
        echo "Extracting..."
        if [[ "$compressed_file" == *.tar.gz ]]; then
          tar -xzvf "$compressed_file"
          echo "Decompression successful."
        elif [[ "$compressed_file" == *.zip ]]; then
          unzip "$compressed_file"
          echo "Decompression successful."
        else
          echo "Unsupported file type."
        fi
      else
        echo "File not found."
      fi
      ;;
    6)
      echo "Exiting the system manager. Goodbye!"
      break
      ;;
    *)
      echo "Invalid choice. Please enter a valid option."
      ;;
  esac
done
