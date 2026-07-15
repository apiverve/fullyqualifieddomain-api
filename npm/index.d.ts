declare module '@apiverve/fullyqualifieddomain' {
  export interface fullyqualifieddomainOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface fullyqualifieddomainResponse {
    status: string;
    error: string | null;
    data: FullyQualifiedDomainData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface FullyQualifiedDomainData {
      ip:           null | string;
      baseDomain:   null | string;
      fqdn:         null | string;
      tld:          null | string;
      subdomain:    null | string;
      domainLevels: number | null;
      detected:     boolean | null;
  }

  export default class fullyqualifieddomainWrapper {
    constructor(options: fullyqualifieddomainOptions);

    execute(callback: (error: any, data: fullyqualifieddomainResponse | null) => void): Promise<fullyqualifieddomainResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: fullyqualifieddomainResponse | null) => void): Promise<fullyqualifieddomainResponse>;
    execute(query?: Record<string, any>): Promise<fullyqualifieddomainResponse>;
  }
}
