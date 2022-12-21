# pendo-ionic-rewaa

Pendo plugin for ionic

## Install

```bash
npm install pendo-ionic-rewaa
npx cap sync
```

## API

<docgen-index>

* [`echo(...)`](#echo)
* [`startSession(...)`](#startsession)

</docgen-index>

<docgen-api>
<!--Update the source file JSDoc comments and rerun docgen to update the docs below-->

### echo(...)

```typescript
echo(options: { value: string; }) => Promise<{ value: string; }>
```

| Param         | Type                            |
| ------------- | ------------------------------- |
| **`options`** | <code>{ value: string; }</code> |

**Returns:** <code>Promise&lt;{ value: string; }&gt;</code>

--------------------


### startSession(...)

```typescript
startSession(options: { visitorId: string; accountId: string; visitorData: string; accountData: string; }) => Promise<{ visitorId: string; accountId: string; visitorData: string; accountData: string; }>
```

| Param         | Type                                                                                             |
| ------------- | ------------------------------------------------------------------------------------------------ |
| **`options`** | <code>{ visitorId: string; accountId: string; visitorData: string; accountData: string; }</code> |

**Returns:** <code>Promise&lt;{ visitorId: string; accountId: string; visitorData: string; accountData: string; }&gt;</code>

--------------------

</docgen-api>
