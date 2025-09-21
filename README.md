# Advanced Python Terminal

A fully functioning terminal emulator built with Python that supports file operations, system monitoring, AI-powered natural language queries, and both CLI and web interfaces.

## Features

### Core Features
- **File Operations**: `ls`, `cd`, `pwd`, `mkdir`, `rm`, `cp`, `mv`, `cat`, `echo`
- **System Monitoring**: `ps`, `top`, `mem`, `cpu`, `df`, `du`
- **Search Tools**: `find`, `grep`
- **Utilities**: `history`, `clear`, `help`
- **Error Handling**: Comprehensive error handling for invalid commands
- **Command History**: Persistent command history with auto-completion

### Advanced Features
- **AI-Powered Commands**: Natural language processing for terminal commands
- **Web Interface**: Modern, responsive web-based terminal
- **Real-time System Monitoring**: Live CPU and memory usage display
- **Auto-completion**: Tab completion for commands
- **Cross-platform**: Works on Windows, macOS, and Linux

## Installation

1. Clone or download this repository
2. Install the required dependencies:
   ```bash
   pip install -r requirements.txt
   ```

## Usage

### Command Line Interface

Run the terminal in CLI mode:
```bash
python terminal.py
```

### Web Interface

Run the terminal with web interface:
```bash
python terminal.py --web
```

Then open your browser and navigate to `http://localhost:5000`

## Available Commands

### File Operations
- `ls [options] [dir]` - List directory contents
  - `-a` or `--all`: Show hidden files
  - `-l` or `--long`: Long format with details
  - `-h` or `--human-readable`: Human-readable file sizes
- `cd [dir]` - Change directory
- `pwd` - Print working directory
- `mkdir <dir>` - Create directory
- `rm [options] <file>` - Remove file/directory
  - `-r` or `--recursive`: Recursive removal
  - `-f` or `--force`: Force removal
- `cp [options] <src> <dest>` - Copy file/directory
  - `-r` or `--recursive`: Recursive copy
- `mv <src> <dest>` - Move/rename file/directory
- `cat <file>` - Display file contents
- `echo <text>` - Echo text

### System Monitoring
- `ps` - List running processes
- `top` - Show top processes by CPU usage
- `mem` - Show memory usage
- `cpu` - Show CPU usage
- `df` - Show disk usage
- `du [dir]` - Show directory usage

### Search Tools
- `find <pattern> [dir]` - Find files by name
- `grep <pattern> <file>` - Search text in files

### Utilities
- `history` - Show command history
- `clear` - Clear screen
- `help` - Show help information
- `exit` - Exit terminal

### Natural Language Commands (No "ai" prefix needed!)
- **Direct natural language processing** - Just type what you want to do!
  - Examples:
    - `create folder test` - Creates a folder named "test"
    - `move file.txt to folder` - Moves file.txt to folder
    - `show files` - Lists files in current directory
    - `show memory` - Displays memory information
    - `show processes` - Lists running processes
    - `create file demo.txt with hello world` - Creates file with content
    - `read demo.txt` - Reads file contents
    - `delete demo.txt` - Deletes a file
    - `what can you do` - Shows available commands

## Web Interface Features

The web interface provides:
- **Modern UI**: Clean, responsive design with syntax highlighting
- **Real-time Monitoring**: Live CPU and memory usage display
- **Command History**: Clickable command history in sidebar
- **Quick Commands**: Pre-defined command shortcuts
- **System Monitor**: Visual progress bars for system resources
- **Auto-completion**: Tab completion for commands
- **Mobile Support**: Responsive design for mobile devices

## Examples

### Basic File Operations
```bash
# List files with details
ls -la

# Create a new directory
mkdir my_project

# Change to the directory
cd my_project

# Create a file
echo "Hello World" > hello.txt

# Display file contents
cat hello.txt

# Copy file
cp hello.txt hello_backup.txt

# List files
ls
```

### System Monitoring
```bash
# Check memory usage
mem

# Check CPU usage
cpu

# List running processes
ps

# Show top processes
top

# Check disk usage
df
```

### Natural Language Commands
```bash
# Create a folder and move files (no 'ai' prefix needed!)
create folder documents
move report.txt to documents

# Check system status
show memory
show processes
show files

# Create and read files
create file notes.txt with important information
read notes.txt
delete notes.txt

# Ask for help
what can you do
```

## Architecture

The terminal is built with a modular architecture:

- **`terminal.py`**: Core terminal class with command execution
- **`web_interface.py`**: Flask-based web interface
- **`templates/terminal.html`**: Web interface template
- **`requirements.txt`**: Python dependencies

## Error Handling

The terminal includes comprehensive error handling:
- Invalid command detection
- File permission errors
- Directory not found errors
- Process execution errors
- Network errors (web interface)

## Security Considerations

- Commands are executed in a controlled environment
- File operations are restricted to the current working directory
- Web interface includes session management
- Input validation and sanitization

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Add tests if applicable
5. Submit a pull request

## License

This project is open source and available under the MIT License.

## Troubleshooting

### Common Issues

1. **Permission Errors**: Ensure you have proper permissions for file operations
2. **Command Not Found**: Some system commands may not be available on all platforms
3. **Web Interface Not Loading**: Check if port 5000 is available
4. **Dependencies Missing**: Run `pip install -r requirements.txt`

### Platform-Specific Notes

- **Windows**: Some Unix commands may not work as expected
- **macOS**: May require additional permissions for system monitoring
- **Linux**: Full functionality should be available

## Future Enhancements

- [ ] Plugin system for custom commands
- [ ] SSH support for remote connections
- [ ] File editor integration
- [ ] Advanced AI command processing
- [ ] Custom themes and configurations
- [ ] Command aliases and shortcuts
- [ ] Script execution and automation
- [ ] Database integration for command history