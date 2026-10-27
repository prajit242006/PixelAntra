# PixelAntra — Image Processing with Divide & Conquer

PixelAntra is a Java 17 + Spring Boot educational web application demonstrating image-processing and Design & Analysis of Algorithms (DAA) techniques.

## What changed in this redesign

- A minimal dark landing page with a centered image-upload area.
- A separate editor-style workspace at `/workspace.html`.
- Upload selection is passed between pages using the browser's IndexedDB; the image is sent to the Java backend only when the user clicks **Process image**.
- Processing controls, original/result previews, runtime, dimensions, regions, and download are kept in the workspace.
- The Strassen vs standard matrix benchmark is tucked into a collapsed **Advanced · Matrix benchmark** section.
- Existing backend endpoints and algorithm implementations are preserved.

## Requirements

- Java 17 or newer
- Maven 3.8+ (or use the included Maven wrapper if added to your local setup)

## Run on Windows

1. Extract the project ZIP.
2. Open the extracted `PixelAntra_Updated` folder in VS Code.
3. Open a terminal in that folder.
4. Run:

   ```powershell
   mvn spring-boot:run
   ```

   Or double-click `run.bat` if Maven is available on your PATH.
5. Open <http://localhost:8080>.
6. Select an image and click **Continue to workspace**.
7. Choose an algorithm and click **Process image**.

## Supported features

- Divide & Conquer Blur
- Quadtree Compression + Boundaries
- Maximum-Intensity Region
- Rotate 90° transformation demo
- Standard vs Strassen matrix multiplication benchmark
- Download processed output as PNG

## API endpoints

- `POST /api/process` — multipart fields: `image`, `operation`, `parameter`
- `POST /api/benchmark` — JSON body such as `{"size":64}`
- `GET /api/health` — health check

## Notes

- Accepted upload types are PNG and JPG/JPEG; maximum upload size is 12 MB.
- The browser's IndexedDB is used to hand off the selected file between the landing page and workspace page. If browser storage is disabled, try another browser or select the image again.
- This is an educational DAA demonstration, not a full commercial image editor.
