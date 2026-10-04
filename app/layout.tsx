import "./globals.css";
import type { Metadata } from "next";
export const metadata:Metadata={title:"AVHB Médias",description:"Vidéos et ressources Avignon Handball"};
export default function RootLayout({children}:{children:React.ReactNode}){return <html lang="fr"><body>{children}</body></html>}
