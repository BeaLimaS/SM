void bin_img(unsigned char *ptr, int w, int h, unsigned char limiar)
{
    unsigned int i;
        for (i=0; i<w*h; i++){
        *(ptr+i)=*(ptr+i)<limiar ? 255:0;
    }
}
