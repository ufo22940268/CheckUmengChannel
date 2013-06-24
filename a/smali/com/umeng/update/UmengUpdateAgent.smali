.class public Lcom/umeng/update/UmengUpdateAgent;
.super Ljava/lang/Object;
.source "UmengUpdateAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/update/UmengUpdateAgent$a;
    }
.end annotation


# static fields
.field static a:Z = false

.field static b:Ljava/lang/String; = null

.field public static final c:Ljava/lang/String; = "update"

.field static d:Ljava/lang/String; = null

.field static e:Ljava/lang/String; = null

.field static final f:[Ljava/lang/String; = null

.field public static final g:Ljava/lang/String; = "2.0.0.20130308"

.field private static h:Z = false

.field private static final i:Ljava/lang/String; = "umeng_last_update_time"

.field private static final j:Ljava/lang/String; = "umeng_update_internal"

.field private static k:Z

.field private static l:Lcom/umeng/update/UmengDownloadListener;

.field private static m:Lcom/umeng/update/UmengUpdateListener;

.field private static n:Landroid/content/Context;

.field private static o:Lcom/umeng/common/net/k;

.field private static p:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 27
    sput-boolean v2, Lcom/umeng/update/UmengUpdateAgent;->h:Z

    .line 28
    sput-boolean v2, Lcom/umeng/update/UmengUpdateAgent;->a:Z

    .line 30
    const-class v0, Lcom/umeng/update/UmengUpdateAgent;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/update/UmengUpdateAgent;->b:Ljava/lang/String;

    .line 36
    sput-boolean v3, Lcom/umeng/update/UmengUpdateAgent;->k:Z

    .line 40
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "http://au.umeng.com/api/check_app_update"

    aput-object v1, v0, v3

    const-string v1, "http://au.umeng.co/api/check_app_update"

    aput-object v1, v0, v2

    sput-object v0, Lcom/umeng/update/UmengUpdateAgent;->f:[Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    sput-object v0, Lcom/umeng/update/UmengUpdateAgent;->m:Lcom/umeng/update/UmengUpdateListener;

    .line 52
    new-instance v0, Lcom/umeng/update/a;

    invoke-direct {v0}, Lcom/umeng/update/a;-><init>()V

    sput-object v0, Lcom/umeng/update/UmengUpdateAgent;->o:Lcom/umeng/common/net/k;

    .line 88
    new-instance v0, Lcom/umeng/update/b;

    invoke-direct {v0}, Lcom/umeng/update/b;-><init>()V

    sput-object v0, Lcom/umeng/update/UmengUpdateAgent;->p:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    return-void
.end method

.method private static a(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .parameter

    .prologue
    .line 311
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 312
    const-string v1, "umeng_analytic_online_setting_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 313
    invoke-static {p0}, Lcom/umeng/common/b;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 314
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a()Lcom/umeng/update/UmengDownloadListener;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/umeng/update/UmengUpdateAgent;->l:Lcom/umeng/update/UmengDownloadListener;

    return-object v0
.end method

.method static a(ILcom/umeng/update/UpdateResponse;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 148
    sget-object v0, Lcom/umeng/update/UmengUpdateAgent;->m:Lcom/umeng/update/UmengUpdateListener;

    if-eqz v0, :cond_0

    .line 150
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 151
    iput p0, v0, Landroid/os/Message;->what:I

    .line 152
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 154
    sget-object v1, Lcom/umeng/update/UmengUpdateAgent;->p:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 157
    :cond_0
    return-void
.end method

.method static a(Landroid/content/Context;Lcom/umeng/update/UpdateResponse;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 266
    sget-object v0, Lcom/umeng/update/UmengUpdateAgent;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/umeng/update/UpdateResponse;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget-boolean v0, p1, Lcom/umeng/update/UpdateResponse;->delta:Z

    if-eqz v0, :cond_0

    .line 268
    new-instance v0, Lcom/umeng/common/net/a;

    const-string v2, "delta_update"

    invoke-static {p0}, Lcom/umeng/common/b;->w(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/umeng/update/UpdateResponse;->path:Ljava/lang/String;

    sget-object v5, Lcom/umeng/update/UmengUpdateAgent;->o:Lcom/umeng/common/net/k;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/umeng/common/net/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/common/net/k;)V

    .line 271
    sget-object v1, Lcom/umeng/update/UmengUpdateAgent;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/umeng/common/net/a;->a(Ljava/lang/String;)V

    .line 272
    sget-object v1, Lcom/umeng/update/UmengUpdateAgent;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/umeng/common/net/a;->b(Ljava/lang/String;)V

    .line 273
    invoke-virtual {v0}, Lcom/umeng/common/net/a;->a()V

    .line 282
    :goto_0
    return-void

    .line 276
    :cond_0
    new-instance v0, Lcom/umeng/common/net/a;

    const-string v2, "update"

    invoke-static {p0}, Lcom/umeng/common/b;->w(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/umeng/update/UpdateResponse;->path:Ljava/lang/String;

    sget-object v5, Lcom/umeng/update/UmengUpdateAgent;->o:Lcom/umeng/common/net/k;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/umeng/common/net/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/common/net/k;)V

    .line 279
    sget-object v1, Lcom/umeng/update/UmengUpdateAgent;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/umeng/common/net/a;->a(Ljava/lang/String;)V

    .line 280
    sget-object v1, Lcom/umeng/update/UmengUpdateAgent;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/umeng/common/net/a;->b(Ljava/lang/String;)V

    .line 281
    invoke-virtual {v0}, Lcom/umeng/common/net/a;->a()V

    goto :goto_0
.end method

.method static synthetic a(Z)Z
    .locals 0
    .parameter

    .prologue
    .line 26
    sput-boolean p0, Lcom/umeng/update/UmengUpdateAgent;->k:Z

    return p0
.end method

.method static synthetic b()Lcom/umeng/update/UmengUpdateListener;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/umeng/update/UmengUpdateAgent;->m:Lcom/umeng/update/UmengUpdateListener;

    return-object v0
.end method

.method static synthetic c()Landroid/content/Context;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/umeng/update/UmengUpdateAgent;->n:Landroid/content/Context;

    return-object v0
.end method

.method public static setOnDownloadListener(Lcom/umeng/update/UmengDownloadListener;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    sput-object p0, Lcom/umeng/update/UmengUpdateAgent;->l:Lcom/umeng/update/UmengDownloadListener;

    .line 86
    return-void
.end method

.method public static setUpdateAutoPopup(Z)V
    .locals 0
    .parameter

    .prologue
    .line 134
    sput-boolean p0, Lcom/umeng/update/UmengUpdateAgent;->a:Z

    .line 135
    return-void
.end method

.method public static setUpdateListener(Lcom/umeng/update/UmengUpdateListener;)V
    .locals 0
    .parameter

    .prologue
    .line 144
    sput-object p0, Lcom/umeng/update/UmengUpdateAgent;->m:Lcom/umeng/update/UmengUpdateListener;

    .line 145
    return-void
.end method

.method public static setUpdateOnlyWifi(Z)V
    .locals 0
    .parameter

    .prologue
    .line 124
    sput-boolean p0, Lcom/umeng/update/UmengUpdateAgent;->h:Z

    .line 125
    return-void
.end method

.method public static showUpdateDialog(Landroid/content/Context;Lcom/umeng/update/UpdateResponse;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 206
    :try_start_0
    const-string v0, ""

    .line 207
    invoke-static {p0}, Lcom/umeng/common/b;->l(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/umeng/common/c;->a(Landroid/content/Context;)Lcom/umeng/common/c;

    move-result-object v1

    const-string v2, "UMGprsCondition"

    invoke-virtual {v1, v2}, Lcom/umeng/common/c;->f(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 213
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 214
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 215
    invoke-static {p0}, Lcom/umeng/common/c;->a(Landroid/content/Context;)Lcom/umeng/common/c;

    move-result-object v0

    const-string v2, "UMNewVersion"

    invoke-virtual {v0, v2}, Lcom/umeng/common/c;->f(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 217
    iget-object v0, p1, Lcom/umeng/update/UpdateResponse;->version:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 218
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 219
    iget-object v0, p1, Lcom/umeng/update/UpdateResponse;->target_size:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 220
    invoke-static {p0}, Lcom/umeng/common/c;->a(Landroid/content/Context;)Lcom/umeng/common/c;

    move-result-object v0

    const-string v2, "UMTargetSize"

    invoke-virtual {v0, v2}, Lcom/umeng/common/c;->f(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 222
    iget-object v0, p1, Lcom/umeng/update/UpdateResponse;->target_size:Ljava/lang/String;

    invoke-static {v0}, Lcom/umeng/common/util/g;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 224
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 225
    iget-object v0, p1, Lcom/umeng/update/UpdateResponse;->target_size:Ljava/lang/String;

    iget-object v2, p1, Lcom/umeng/update/UpdateResponse;->size:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 226
    invoke-static {p0}, Lcom/umeng/common/c;->a(Landroid/content/Context;)Lcom/umeng/common/c;

    move-result-object v0

    const-string v2, "UMUpdateSize"

    invoke-virtual {v0, v2}, Lcom/umeng/common/c;->f(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 228
    iget-object v0, p1, Lcom/umeng/update/UpdateResponse;->size:Ljava/lang/String;

    invoke-static {v0}, Lcom/umeng/common/util/g;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 229
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 232
    :cond_1
    iget-object v0, p1, Lcom/umeng/update/UpdateResponse;->updateLog:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 234
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 235
    invoke-static {p0}, Lcom/umeng/common/c;->a(Landroid/content/Context;)Lcom/umeng/common/c;

    move-result-object v2

    const-string v3, "UMUpdateTitle"

    invoke-virtual {v2, v3}, Lcom/umeng/common/c;->f(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-static {p0}, Lcom/umeng/common/c;->a(Landroid/content/Context;)Lcom/umeng/common/c;

    move-result-object v2

    const-string v3, "UMUpdateNow"

    invoke-virtual {v2, v3}, Lcom/umeng/common/c;->f(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/umeng/update/d;

    invoke-direct {v3, p0, p1}, Lcom/umeng/update/d;-><init>(Landroid/content/Context;Lcom/umeng/update/UpdateResponse;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-static {p0}, Lcom/umeng/common/c;->a(Landroid/content/Context;)Lcom/umeng/common/c;

    move-result-object v2

    const-string v3, "UMNotNow"

    invoke-virtual {v2, v3}, Lcom/umeng/common/c;->f(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/umeng/update/c;

    invoke-direct {v3}, Lcom/umeng/update/c;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 259
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    :goto_0
    return-void

    .line 260
    :catch_0
    move-exception v0

    .line 261
    sget-object v1, Lcom/umeng/update/UmengUpdateAgent;->b:Ljava/lang/String;

    const-string v2, "Fail to create update dialog box."

    invoke-static {v1, v2, v0}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static update(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 167
    :try_start_0
    sget-boolean v0, Lcom/umeng/update/UmengUpdateAgent;->h:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/umeng/common/b;->l(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/update/UmengUpdateAgent;->a(ILcom/umeng/update/UpdateResponse;)V

    .line 192
    :goto_0
    return-void

    .line 172
    :cond_0
    if-nez p0, :cond_1

    .line 173
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/update/UmengUpdateAgent;->a(ILcom/umeng/update/UpdateResponse;)V

    .line 174
    sget-object v0, Lcom/umeng/update/UmengUpdateAgent;->b:Ljava/lang/String;

    const-string v1, "unexpected null context in update"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 189
    :catch_0
    move-exception v0

    .line 190
    sget-object v1, Lcom/umeng/update/UmengUpdateAgent;->b:Ljava/lang/String;

    const-string v2, "Exception occurred in Mobclick.update(). "

    invoke-static {v1, v2, v0}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 178
    :cond_1
    :try_start_1
    sget-boolean v0, Lcom/umeng/update/UmengUpdateAgent;->k:Z

    if-eqz v0, :cond_2

    .line 179
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/update/UmengUpdateAgent;->a(ILcom/umeng/update/UpdateResponse;)V

    .line 180
    sget-object v0, Lcom/umeng/update/UmengUpdateAgent;->b:Ljava/lang/String;

    const-string v1, "Is updating now."

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-static {p0}, Lcom/umeng/common/a/c;->b(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 186
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/umeng/update/UmengUpdateAgent;->n:Landroid/content/Context;

    .line 187
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/umeng/update/e;

    invoke-direct {v1, p0}, Lcom/umeng/update/e;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 188
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static update(Landroid/content/Context;J)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 293
    .line 294
    if-nez p0, :cond_1

    .line 295
    sget-object v0, Lcom/umeng/update/UmengUpdateAgent;->b:Ljava/lang/String;

    const-string v1, "unexpected null Context"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 299
    :cond_1
    invoke-static {p0}, Lcom/umeng/update/UmengUpdateAgent;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 300
    const-string v1, "umeng_last_update_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 301
    const-string v3, "umeng_update_internal"

    invoke-interface {v0, v3, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 302
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 304
    sub-long v1, v5, v1

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 305
    invoke-static {p0}, Lcom/umeng/update/UmengUpdateAgent;->update(Landroid/content/Context;)V

    .line 306
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "umeng_last_update_time"

    invoke-interface {v0, v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static update(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 113
    sput-object p1, Lcom/umeng/common/a;->r:Ljava/lang/String;

    .line 114
    invoke-static {p0}, Lcom/umeng/update/UmengUpdateAgent;->update(Landroid/content/Context;)V

    .line 115
    return-void
.end method
