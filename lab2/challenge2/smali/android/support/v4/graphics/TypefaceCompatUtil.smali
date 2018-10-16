.class public Landroid/support/v4/graphics/TypefaceCompatUtil;
.super Ljava/lang/Object;
.source "TypefaceCompatUtil.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final CACHE_FILE_PREFIX:Ljava/lang/String; = ".font"

.field private static final TAG:Ljava/lang/String; = "TypefaceCompatUtil"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .registers 2
    .param p0, "c"    # Ljava/io/Closeable;

    .line 157
    if-eqz p0, :cond_7

    .line 159
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    .line 161
    goto :goto_7

    .line 160
    :catch_6
    move-exception v0

    .line 163
    :cond_7
    :goto_7
    return-void
.end method

.method public static copyToDirectBuffer(Landroid/content/Context;Landroid/content/res/Resources;I)Ljava/nio/ByteBuffer;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "id"    # I
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x13
    .end annotation

    .line 108
    invoke-static {p0}, Landroid/support/v4/graphics/TypefaceCompatUtil;->getTempFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 109
    .local v0, "tmpFile":Ljava/io/File;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 110
    return-object v1

    .line 113
    :cond_8
    :try_start_8
    invoke-static {v0, p1, p2}, Landroid/support/v4/graphics/TypefaceCompatUtil;->copyToFile(Ljava/io/File;Landroid/content/res/Resources;I)Z

    move-result v2
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_18

    if-nez v2, :cond_13

    .line 114
    nop

    .line 118
    .end local v0    # "tmpFile":Ljava/io/File;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "res":Landroid/content/res/Resources;
    .end local p2    # "id":I
    :goto_f
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-object v1

    .line 116
    .restart local v0    # "tmpFile":Ljava/io/File;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "res":Landroid/content/res/Resources;
    .restart local p2    # "id":I
    :cond_13
    :try_start_13
    invoke-static {v0}, Landroid/support/v4/graphics/TypefaceCompatUtil;->mmap(Ljava/io/File;)Ljava/nio/ByteBuffer;

    move-result-object v1
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_18

    goto :goto_f

    .line 118
    :catchall_18
    move-exception v1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    throw v1
.end method

.method public static copyToFile(Ljava/io/File;Landroid/content/res/Resources;I)Z
    .registers 5
    .param p0, "file"    # Ljava/io/File;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "id"    # I

    .line 147
    const/4 v0, 0x0

    .line 149
    .local v0, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    move-object v0, v1

    .line 150
    invoke-static {p0, v0}, Landroid/support/v4/graphics/TypefaceCompatUtil;->copyToFile(Ljava/io/File;Ljava/io/InputStream;)Z

    move-result v1
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_e

    .line 152
    invoke-static {v0}, Landroid/support/v4/graphics/TypefaceCompatUtil;->closeQuietly(Ljava/io/Closeable;)V

    return v1

    :catchall_e
    move-exception v1

    invoke-static {v0}, Landroid/support/v4/graphics/TypefaceCompatUtil;->closeQuietly(Ljava/io/Closeable;)V

    throw v1
.end method

.method public static copyToFile(Ljava/io/File;Ljava/io/InputStream;)Z
    .registers 8
    .param p0, "file"    # Ljava/io/File;
    .param p1, "is"    # Ljava/io/InputStream;

    .line 126
    const/4 v0, 0x0

    .line 128
    .local v0, "os":Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    :try_start_2
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    move-object v0, v2

    .line 129
    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 131
    .local v2, "buffer":[B
    :goto_c
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    move v4, v3

    .line 131
    .local v4, "readLen":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_18

    .line 132
    invoke-virtual {v0, v2, v1, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_17} :catch_1f
    .catchall {:try_start_2 .. :try_end_17} :catchall_1d

    goto :goto_c

    .line 134
    :cond_18
    const/4 v1, 0x1

    .line 139
    .end local v0    # "os":Ljava/io/FileOutputStream;
    .end local v2    # "buffer":[B
    .end local v4    # "readLen":I
    .end local p0    # "file":Ljava/io/File;
    .end local p1    # "is":Ljava/io/InputStream;
    :goto_19
    invoke-static {v0}, Landroid/support/v4/graphics/TypefaceCompatUtil;->closeQuietly(Ljava/io/Closeable;)V

    return v1

    .line 139
    .restart local v0    # "os":Ljava/io/FileOutputStream;
    .restart local p0    # "file":Ljava/io/File;
    .restart local p1    # "is":Ljava/io/InputStream;
    :catchall_1d
    move-exception v1

    goto :goto_3b

    .line 135
    :catch_1f
    move-exception v2

    .line 136
    .local v2, "e":Ljava/io/IOException;
    :try_start_20
    const-string v3, "TypefaceCompatUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error copying resource contents to temp file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catchall {:try_start_20 .. :try_end_3a} :catchall_1d

    .line 137
    goto :goto_19

    .line 139
    .end local v2    # "e":Ljava/io/IOException;
    :goto_3b
    invoke-static {v0}, Landroid/support/v4/graphics/TypefaceCompatUtil;->closeQuietly(Ljava/io/Closeable;)V

    throw v1
.end method

.method public static getTempFile(Landroid/content/Context;)Ljava/io/File;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ".font"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "prefix":Ljava/lang/String;
    const/4 v1, 0x0

    .line 60
    .local v1, "i":I
    :goto_27
    const/16 v2, 0x64

    if-ge v1, v2, :cond_4f

    .line 61
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 63
    .local v2, "file":Ljava/io/File;
    :try_start_43
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v3
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_47} :catch_4b

    if-eqz v3, :cond_4a

    .line 64
    return-object v2

    .line 68
    :cond_4a
    goto :goto_4c

    .line 66
    :catch_4b
    move-exception v3

    .line 60
    .end local v2    # "file":Ljava/io/File;
    :goto_4c
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 70
    .end local v1    # "i":I
    :cond_4f
    const/4 v1, 0x0

    return-object v1
.end method

.method public static mmap(Landroid/content/Context;Landroid/os/CancellationSignal;Landroid/net/Uri;)Ljava/nio/ByteBuffer;
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x13
    .end annotation

    .line 92
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 93
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v1, 0x0

    :try_start_5
    const-string v2, "r"

    invoke-virtual {v0, p2, v2, p1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_b} :catch_65

    .line 94
    .local v2, "pfd":Landroid/os/ParcelFileDescriptor;
    :try_start_b
    new-instance v3, Ljava/io/FileInputStream;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_14} :catch_4e
    .catchall {:try_start_b .. :try_end_14} :catchall_4b

    .line 93
    .local v3, "fis":Ljava/io/FileInputStream;
    nop

    .line 95
    :try_start_15
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    .line 96
    .local v4, "channel":Ljava/nio/channels/FileChannel;
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v9

    .line 97
    .local v9, "size":J
    sget-object v6, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v7, 0x0

    move-object v5, v4

    invoke-virtual/range {v5 .. v10}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v5
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_26} :catch_34
    .catchall {:try_start_15 .. :try_end_26} :catchall_31

    .line 98
    if-eqz v3, :cond_2b

    :try_start_28
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_2b} :catch_4e
    .catchall {:try_start_28 .. :try_end_2b} :catchall_4b

    :cond_2b
    if-eqz v2, :cond_30

    :try_start_2d
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_65

    :cond_30
    return-object v5

    .line 98
    .end local v4    # "channel":Ljava/nio/channels/FileChannel;
    .end local v9    # "size":J
    :catchall_31
    move-exception v4

    move-object v5, v1

    goto :goto_3a

    .line 93
    :catch_34
    move-exception v4

    :try_start_35
    throw v4
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_36

    .line 98
    :catchall_36
    move-exception v5

    move-object v11, v5

    move-object v5, v4

    move-object v4, v11

    :goto_3a
    if-eqz v3, :cond_4a

    if-eqz v5, :cond_47

    :try_start_3e
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_41} :catch_42
    .catchall {:try_start_3e .. :try_end_41} :catchall_4b

    goto :goto_4a

    :catch_42
    move-exception v6

    :try_start_43
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4a

    :cond_47
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    :cond_4a
    :goto_4a
    throw v4
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_4b} :catch_4e
    .catchall {:try_start_43 .. :try_end_4b} :catchall_4b

    .line 98
    .end local v3    # "fis":Ljava/io/FileInputStream;
    :catchall_4b
    move-exception v3

    move-object v4, v1

    goto :goto_54

    .line 93
    :catch_4e
    move-exception v3

    :try_start_4f
    throw v3
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_50

    .line 98
    :catchall_50
    move-exception v4

    move-object v11, v4

    move-object v4, v3

    move-object v3, v11

    :goto_54
    if-eqz v2, :cond_64

    if-eqz v4, :cond_61

    :try_start_58
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_5b} :catch_5c
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_65

    goto :goto_64

    :catch_5c
    move-exception v5

    :try_start_5d
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_64

    :cond_61
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_64
    :goto_64
    throw v3
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_65} :catch_65

    .line 98
    .end local v2    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_65
    move-exception v2

    .line 99
    .local v2, "e":Ljava/io/IOException;
    return-object v1
.end method

.method private static mmap(Ljava/io/File;)Ljava/nio/ByteBuffer;
    .registers 11
    .param p0, "file"    # Ljava/io/File;
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x13
    .end annotation

    .line 78
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_37

    .line 79
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 80
    .local v2, "channel":Ljava/nio/channels/FileChannel;
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v7

    .line 81
    .local v7, "size":J
    sget-object v4, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v5, 0x0

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v3
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_17} :catch_20
    .catchall {:try_start_6 .. :try_end_17} :catchall_1d

    .line 82
    if-eqz v1, :cond_1c

    :try_start_19
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_37

    :cond_1c
    return-object v3

    .line 82
    .end local v2    # "channel":Ljava/nio/channels/FileChannel;
    .end local v7    # "size":J
    :catchall_1d
    move-exception v2

    move-object v3, v0

    goto :goto_26

    .line 78
    :catch_20
    move-exception v2

    :try_start_21
    throw v2
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_22

    .line 82
    :catchall_22
    move-exception v3

    move-object v9, v3

    move-object v3, v2

    move-object v2, v9

    :goto_26
    if-eqz v1, :cond_36

    if-eqz v3, :cond_33

    :try_start_2a
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2d} :catch_2e
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_37

    goto :goto_36

    :catch_2e
    move-exception v4

    :try_start_2f
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_36

    :cond_33
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    :cond_36
    :goto_36
    throw v2
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_37} :catch_37

    .line 82
    .end local v1    # "fis":Ljava/io/FileInputStream;
    :catch_37
    move-exception v1

    .line 83
    .local v1, "e":Ljava/io/IOException;
    return-object v0
.end method
