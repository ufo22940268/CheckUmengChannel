.class public interface abstract Lcom/zhangdan/app/data/db/a/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "content://com.zhangdan.app/mailaccount"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zhangdan/app/data/db/a/h;->a:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "CREATE TABLE IF NOT EXISTS MailAccount(_id INTEGER PRIMARY KEY AUTOINCREMENT,auto_id INTEGER DEFAULT 0,user_id INTEGER DEFAULT 0,mail_account TEXT DEFAULT \'\',pop_state INTEGER DEFAULT 0,last_pop_msg TEXT DEFAULT \'\',last_pop_time TEXT DEFAULT \'\',web_login_state INTEGER DEFAULT 0,last_web_access_msg TEXT DEFAULT \'\',last_web_access_time TEXT DEFAULT \'\',trans_setting_state INTEGER DEFAULT 0,is_deleted INTEGER DEFAULT 0,local_pw TEXT DEFAULT \'\',local_special_pw TEXT DEFAULT \'\',"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "local_times INTEGER DEFAULT 0,sync_status TEXT DEFAULT \'\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zhangdan/app/data/db/a/h;->b:Ljava/lang/String;

    return-void
.end method
