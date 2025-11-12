# Changelog

## [Unreleased] - Fix Python Compatibility Issues

### Fixed
- Fixed Python 3.13 compatibility issue with `blis==1.2.0` by documenting Python version requirements (3.9-3.11)
- Fixed `torch==2.4.1` installation by installing from PyTorch repository instead of PyPI
- Fixed NumPy 2.x compatibility issues by constraining to `numpy<2.0` for spacy/thinc compatibility
- Improved `setup.sh` with Python version detection and proper dependency installation order
- Updated README with comprehensive installation instructions and troubleshooting section

### Changed
- Updated `requirements.txt` to remove torch (installed separately) and constrain NumPy version
- Enhanced `setup.sh` with error handling and version checking
- Updated README with Python version requirements and alternative installation methods

### Added
- Added `.python-version` file to specify recommended Python version
- Added comprehensive troubleshooting section to README
- Added Python version detection in setup script

### Technical Details
- **Python Compatibility**: Now explicitly supports Python 3.9, 3.10, and 3.11
- **PyTorch Installation**: Uses PyTorch repository for better version compatibility
- **NumPy Version**: Constrained to <2.0 to avoid compatibility issues with spacy/thinc
- **Dependency Order**: Setup script now installs dependencies in correct order

