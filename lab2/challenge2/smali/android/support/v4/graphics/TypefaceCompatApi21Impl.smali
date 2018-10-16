.class Landroid/support/v4/graphics/TypefaceCompatApi21Impl;
.super Landroid/support/v4/graphics/TypefaceCompatBaseImpl;
.source "TypefaceCompatApi21Impl.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TypefaceCompatApi21Impl"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;-><init>()V

    return-void
.end method

.method private getFile(Landroid/os/ParcelFileDescriptor;)Ljava/io/File;
    .registers 5
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;

    .line 50
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/proc/self/fd/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/system/Os;->readlink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "path":Ljava/lang/String;
    invoke-static {v1}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v2

    iget v2, v2, Landroid/system/StructStat;->st_mode:I

    invoke-static {v2}, Landroid/system/OsConstants;->S_ISREG(I)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 53
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2b
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_2b} :catch_2d

    return-object v2

    .line 55
    :cond_2c
    return-object v0

    .line 57
    .end local v1    # "path":Ljava/lang/String;
    :catch_2d
    move-exception v1

    .line 58
    .local v1, "e":Landroid/system/ErrnoException;
    return-object v0
.end method


# virtual methods
.method public createFromFontInfo(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroid/support/v4/provider/FontsContractCompat$FontInfo;I)Landroid/graphics/Typeface;
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p3, "fonts"    # [Landroid/support/v4/provider/FontsContractCompat$FontInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "style"    # I

    .line 65
    array-length v0, p3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_6

    .line 66
    return-object v1

    .line 68
    :cond_6
    invoke-virtual {p0, p3, p4}, Landroid/support/v4/graphics/TypefaceCompatApi21Impl;->findBestInfo([Landroid/support/v4/provider/FontsContractCompat$FontInfo;I)Landroid/support/v4/provider/FontsContractCompat$FontInfo;

    move-result-object v0

    .line 69
    .local v0, "bestFont":Landroid/support/v4/provider/FontsContractCompat$FontInfo;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 70
    .local v2, "resolver":Landroid/content/ContentResolver;
    nop

    .line 71
    :try_start_f
    invoke-virtual {v0}, Landroid/support/v4/provider/FontsContractCompat$FontInfo;->getUri()Landroid/net/Uri;

    move-result-object v3

    const-string v4, "r"

    invoke-virtual {v2, v3, v4, p2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_19} :catch_7d

    .line 70
    .local v3, "pfd":Landroid/os/ParcelFileDescriptor;
    nop

    .line 72
    :try_start_1a
    invoke-direct {p0, v3}, Landroid/support/v4/graphics/TypefaceCompatApi21Impl;->getFile(Landroid/os/ParcelFileDescriptor;)Ljava/io/File;

    move-result-object v4

    .line 73
    .local v4, "file":Ljava/io/File;
    if-eqz v4, :cond_31

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v5

    if-nez v5, :cond_27

    goto :goto_31

    .line 80
    :cond_27
    invoke-static {v4}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object v5
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_2b} :catch_66
    .catchall {:try_start_1a .. :try_end_2b} :catchall_63

    .line 81
    if-eqz v3, :cond_30

    :try_start_2d
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_7d

    :cond_30
    return-object v5

    .line 76
    :cond_31
    :goto_31
    :try_start_31
    new-instance v5, Ljava/io/FileInputStream;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_3a} :catch_66
    .catchall {:try_start_31 .. :try_end_3a} :catchall_63

    .line 77
    .local v5, "fis":Ljava/io/FileInputStream;
    :try_start_3a
    invoke-super {p0, p1, v5}, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;->createFromInputStream(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/Typeface;

    move-result-object v6
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3e} :catch_4c
    .catchall {:try_start_3a .. :try_end_3e} :catchall_49

    .line 78
    if-eqz v5, :cond_43

    :try_start_40
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_43} :catch_66
    .catchall {:try_start_40 .. :try_end_43} :catchall_63

    .line 81
    :cond_43
    if-eqz v3, :cond_48

    :try_start_45
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_7d

    :cond_48
    return-object v6

    .line 78
    :catchall_49
    move-exception v6

    move-object v7, v1

    goto :goto_52

    .line 76
    :catch_4c
    move-exception v6

    :try_start_4d
    throw v6
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4e

    .line 78
    :catchall_4e
    move-exception v7

    move-object v9, v7

    move-object v7, v6

    move-object v6, v9

    :goto_52
    if-eqz v5, :cond_62

    if-eqz v7, :cond_5f

    :try_start_56
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_59} :catch_5a
    .catchall {:try_start_56 .. :try_end_59} :catchall_63

    goto :goto_62

    :catch_5a
    move-exception v8

    :try_start_5b
    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_62

    :cond_5f
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    :cond_62
    :goto_62
    throw v6
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_63} :catch_66
    .catchall {:try_start_5b .. :try_end_63} :catchall_63

    .line 81
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    :catchall_63
    move-exception v4

    move-object v5, v1

    goto :goto_6c

    .line 70
    :catch_66
    move-exception v4

    :try_start_67
    throw v4
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_68

    .line 81
    :catchall_68
    move-exception v5

    move-object v9, v5

    move-object v5, v4

    move-object v4, v9

    :goto_6c
    if-eqz v3, :cond_7c

    if-eqz v5, :cond_79

    :try_start_70
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_73
    .catch Ljava/lang/Throwable; {:try_start_70 .. :try_end_73} :catch_74
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_73} :catch_7d

    goto :goto_7c

    :catch_74
    move-exception v6

    :try_start_75
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_7c

    :cond_79
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_7c
    :goto_7c
    throw v4
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_7d} :catch_7d

    .line 81
    .end local v3    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_7d
    move-exception v3

    .line 82
    .local v3, "e":Ljava/io/IOException;
    return-object v1
.end method
