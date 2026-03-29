# OBS Notes

- Camera is device **UGREEN 15389**
- Slides Feed is **USB2 Video (first on list)**
- Lower Thirds Feed is **USB2 Video (second on list)**
- In **Controls (side bar)** select **Studio Mode** for a preview window.
- Fade set to **500ms**
- Fade to black set to **3000ms**
- Recording location set to `C:/Users/RiversideAG/Videos/Service Recordings` in **Output > Recording > Recording Path**.
- Recording quality set to **Indistinguishable Quality, Large File Size** in **Output > Recording > Recording Quality** to experiment with the file size & quality.
- Video encoder set to **Hardware (QSV, H.264)** in **Output > Recording > Video Encoder**. This, according to the [OBS Docs](https://obsproject.com/kb/hardware-encoding), is the video encoder on Intel GPUs.
- Mic/Aux enabled on monitor and output, Desktop Audio disabled on both. Maybe this could be configured better later?
- The sound system input is on **Microphone Realtek(R) Audio**, which is currently the default Windows audio input.
- There are a stupid amount of audio levels between the mics and the recording. When first getting the audio input, it was very loud, well into the red on OBS. The original installation may have set the audio level lower on OBS, I need to check. For now, I've set the input volume in the Windows settings at **50%**, **-11.7 dB** in Xair, and **-0.0** in OBS.
- GPU usage on the Intel Arc is about 15%.
- 
