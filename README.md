# Cuneiform

Create a repository of encrypted files!  Great for journals and things.

## Getting Started
First, add a file that you want to encrypt into the `files/` folder:

    echo "secret stuff" >> files/first_post.txt

Now you can encrypt it like this:

    PASSWORD=mypassword ./encrypt

You should see `first_post.txt.encrypted` appear in the files folder.

This project uses openssl's des3 algorithm to encrypt, so if you want to decrypt a file, run this command:

    openssl -d des3 -in files/first_post.txt.encrypted -pass:mypassword

Your original plaintext should be output to the terminal.

You can safely keep a remote git repository of all your encrypted files.  Any files in the files/ directory that don't end in .encrypted are ignored by the .gitignore file, so you can run `git add .` and commit without worry.  Even if uploading to a public repository, the contents of your files should be hidden.

Keep in mind, though, that your filenames and sizes are still plainly visible!
