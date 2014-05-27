.class final enum Lcom/tapjoy/TJAdUnitView$CLOSE_TYPES;
.super Ljava/lang/Enum;
.source "TJAdUnitView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TJAdUnitView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CLOSE_TYPES"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/tapjoy/TJAdUnitView$CLOSE_TYPES;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tapjoy/TJAdUnitView$CLOSE_TYPES;

.field public static final enum HANDLE_BACK_BUTTON:Lcom/tapjoy/TJAdUnitView$CLOSE_TYPES;

.field public static final enum HANDLE_CLOSE_BUTTON:Lcom/tapjoy/TJAdUnitView$CLOSE_TYPES;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 50
    new-instance v0, Lcom/tapjoy/TJAdUnitView$CLOSE_TYPES;

    const-string v1, "HANDLE_BACK_BUTTON"

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/TJAdUnitView$CLOSE_TYPES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/TJAdUnitView$CLOSE_TYPES;->HANDLE_BACK_BUTTON:Lcom/tapjoy/TJAdUnitView$CLOSE_TYPES;

    new-instance v0, Lcom/tapjoy/TJAdUnitView$CLOSE_TYPES;

    const-string v1, "HANDLE_CLOSE_BUTTON"

    invoke-direct {v0, v1, v3}, Lcom/tapjoy/TJAdUnitView$CLOSE_TYPES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/TJAdUnitView$CLOSE_TYPES;->HANDLE_CLOSE_BUTTON:Lcom/tapjoy/TJAdUnitView$CLOSE_TYPES;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/tapjoy/TJAdUnitView$CLOSE_TYPES;

    sget-object v1, Lcom/tapjoy/TJAdUnitView$CLOSE_TYPES;->HANDLE_BACK_BUTTON:Lcom/tapjoy/TJAdUnitView$CLOSE_TYPES;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tapjoy/TJAdUnitView$CLOSE_TYPES;->HANDLE_CLOSE_BUTTON:Lcom/tapjoy/TJAdUnitView$CLOSE_TYPES;

    aput-object v1, v0, v3

    sput-object v0, Lcom/tapjoy/TJAdUnitView$CLOSE_TYPES;->$VALUES:[Lcom/tapjoy/TJAdUnitView$CLOSE_TYPES;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tapjoy/TJAdUnitView$CLOSE_TYPES;
    .locals 1
    .parameter "name"

    .prologue
    .line 50
    const-class v0, Lcom/tapjoy/TJAdUnitView$CLOSE_TYPES;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/TJAdUnitView$CLOSE_TYPES;

    return-object v0
.end method

.method public static values()[Lcom/tapjoy/TJAdUnitView$CLOSE_TYPES;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/tapjoy/TJAdUnitView$CLOSE_TYPES;->$VALUES:[Lcom/tapjoy/TJAdUnitView$CLOSE_TYPES;

    invoke-virtual {v0}, [Lcom/tapjoy/TJAdUnitView$CLOSE_TYPES;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tapjoy/TJAdUnitView$CLOSE_TYPES;

    return-object v0
.end method
